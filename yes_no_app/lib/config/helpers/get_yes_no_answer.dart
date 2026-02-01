import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> GetAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoModel yesNoResponse = YesNoModel.fromJson(response.data);
   


    return yesNoResponse.toMessage();
     
  }
}