import { Controller, Get } from '@nestjs/common';
import { AppService } from './../app.service';

@Controller('orders')
export class OrdersController {
  constructor(private readonly appService: AppService) {}

  @Get()
  users(): int {
    return this.appService.getHello();
  }
}
