import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return `Hello World! Version ${process.version} Thanks for using this skeleton!`;
  }
}
