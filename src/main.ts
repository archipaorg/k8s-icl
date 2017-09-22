import {Build} from './command/build';
import * as Mkdirp from 'mkdirp';
import * as Rimraf from 'rimraf';
import * as readdir from 'recursive-readdir';
import * as Path from 'path';

const download_git_repo = require('download-git-repo');


const schemaFolder = './src/schemas';
const templateFolder = './';
const K8S_SCHEMAS_REPO = 'garethr/kubernetes-json-schema';


function valid(file: string) {
    return Path.dirname(file).endsWith('-standalone') && Path.basename(file) == '_definitions.json';
}

function dlRepo(url: string, target: string) {
    return new Promise((resolve: any, reject: any) => {
        console.log('Downloading ' + url + '...');
        //resolve();
        download_git_repo(url, target, {}, (err: any) => {
            if (err) {
                if (err.statusCode && err.statusCode == 404) {
                    let err: any = new Error('Can\'t find the included library "' + url + '"');
                    err.type = 'EUSAGE';
                    reject(err);
                } else {
                    reject(err);
                }
            } else {
                console.log(url + ' downloaded');
                resolve();
            }
        });
    });
}

dlRepo(K8S_SCHEMAS_REPO, schemaFolder).then(() => {
    // loop through all directories ending with standalone
    readdir(schemaFolder, (err: any, dirs: Array<string>) => {
        if (!err) {
            dirs.forEach((dir) => {
                if (valid(dir)) {
                    const pathParts = Path.dirname(dir).split('/');
                    let expectedDirName = pathParts[pathParts.length - 1].replace('-standalone', '');
                    expectedDirName = expectedDirName == 'master' ? 'latest' : expectedDirName;
                    const expectedDir = Path.join(templateFolder,
                        expectedDirName);
                    // make sur the dir exists
                    Mkdirp.sync(expectedDir);
                    let builder: Build = new Build(Path.resolve(dir), Path.resolve(expectedDir));
                    builder.generate();
                }
            });
        }
        Rimraf.sync(schemaFolder);
    });

}).catch((e) => {
    console.log(e);
    Rimraf.sync(schemaFolder);
});
