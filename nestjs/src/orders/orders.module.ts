import { Module } from '@nestjs/common';
import { OrdersController } from './orders.controller';
import { AppService } from './../app.service';

@Module({
  controllers: [OrdersController],
  providers: [AppService]
})
export class OrdersModule {}
