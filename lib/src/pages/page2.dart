import 'package:churchproapp/src/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final serviceProvider = Provider.of<UserServicesProvider>(context);
    final serviceProvider = Provider.of<UserServices>(context);

    //todo: Investigar por que tengo que hacer doble /instancia para que funcione el servicio que consulta los usuarios
    return Scaffold(
      body: Container(
        color: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemCount: serviceProvider.users.length,
          itemBuilder: (BuildContext context, int index) {
            return _RowHeader(
              serviceProvider: serviceProvider,
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class _RowHeader extends StatelessWidget {
  final int index;
  const _RowHeader({
    super.key,
    required this.serviceProvider,
    required this.index,
  });

  final UserServices serviceProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            '${index + 1} - (${serviceProvider.users[index].id}) ${serviceProvider.users[index].fullName}'),
        _RowDetail(serviceProvider: serviceProvider, index: index)
      ],
    );
  }
}

class _RowDetail extends StatelessWidget {
  const _RowDetail({
    super.key,
    required this.serviceProvider,
    required this.index,
  });

  final UserServices serviceProvider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      margin: const EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Name: ${serviceProvider.users[index].name}',
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
        Text('Last Name: ${serviceProvider.users[index].lastName}',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            )),
        const Divider()
      ]),
    );
  }
}
