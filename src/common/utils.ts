import * as fs from 'fs';

export class Utils {

    /**
     *
     * @param {string} folderPath
     * @param {string} fileName
     * @returns {any}
     */
    public static openJSONSchemaIn(file: string): any {
        return JSON.parse(fs.readFileSync(file, {encoding: 'utf-8'}));
    }

    /**
     * Empty the directory specified at {@param dirPath}
     * @param {string} dirPath
     * @param {boolean} removeSelf
     */
    public static emptyDir(dirPath: string, removeSelf: boolean = true) {

        let files: Array<string> = fs.readdirSync(dirPath);

        if (files.length > 0) {
            for (let file of files) {
                let filePath: string = dirPath + '/' + file;
                if (fs.statSync(filePath).isFile())
                    fs.unlinkSync(filePath);
                else
                    this.emptyDir(filePath);
            }
        }

        if (removeSelf) {
            fs.rmdirSync(dirPath);
        }
    };

    /**
     * Create dir
     * @param {string} dir
     */
    public static createDir(dir: string) {
        if (!fs.existsSync(dir)) {
            fs.mkdirSync(dir);
        }
    }

    /**
     * Insert a break line in {@param str} every {@param maxLength} chars
     * @param {string} str
     * @param {number} maxLength
     * @returns {string}
     */
    public static breakIfLineIsLongerThan(str: string | undefined, maxLength: number = 86): string {

        if (!str) {
            return '';
        }
        let countChar: number = 0;
        let output: string = '';
        for (let char of str) {
            if (countChar > maxLength && char == ' ') {
                output += '\r\n';
                countChar = 0;
            }
            countChar++;
            output += char;
        }
        return output;
    }
}