
import 'package:flutter/material.dart';
import 'package:onloneshop/models/order_model.dart';
import 'package:onloneshop/providers/order_provider.dart';
import 'package:provider/provider.dart';
import '../../../../widgets/empty_bag.dart';
import '../../../widgets/title_text.dart';
import 'orders_widget.dart';

class OrdersScreenFree extends StatefulWidget {
  static const routeName = '/OrderScreen';

  const OrdersScreenFree({Key? key}) : super(key: key);

  @override
  State<OrdersScreenFree> createState() => _OrdersScreenFreeState();
}

class _OrdersScreenFreeState extends State<OrdersScreenFree> {
  bool isEmptyOrders = false;
  @override
  Widget build(BuildContext context) {
    final orderProvider=Provider.of<OrderProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const TitlesTextWidget(
            label: 'Placed orders',
          ),
        ),
        body:FutureBuilder<List<OrdersModelAdvanced>>(
          future: orderProvider.fetchOrders(), 
          builder:(context, snapshot) {
            if (snapshot.connectionState==ConnectionState.waiting) {

            return  Center(
                child: CircularProgressIndicator());
              
            }
            else if(snapshot.hasError)
            {
              Center(
                child: SelectableText(snapshot.hasData.toString()));

            }
            else if(!snapshot.hasData)
            {
              return EmptyBagWidget(
                imagePath:'lib/icons/luggage-svgrepo-com.svg', 
                title: 'no orders has been yet',
                 subtitle:""
                ,
                 buttonText: 'shop now');


            }
            return ListView.separated(
              itemBuilder:(context, index) {
         return       Padding(
                  padding: const EdgeInsets.symmetric(horizontal:2.0,vertical: 6),
                  child: OrdersWidgetFree(ordersModelAdvanced: orderProvider.orders[index],),
                );
              }, 
              separatorBuilder:(context, index) {
                return Divider();
              }, 
              itemCount: snapshot.data!.length);
            
          },
          ));
  }
}
