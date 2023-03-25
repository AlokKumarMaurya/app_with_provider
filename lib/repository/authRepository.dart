 import 'package:app_with_provider/data/network/networkApiService.dart';

import '../data/network/baseApiService.dart';

class AuthRepository{


  //hit api here
   Future login()async{
     BaseApiService apiService=NetworkApiService();
     try{
       var res=await apiService.getGetApiResponse(url: "url");
       return res;
     }catch(e){
       throw e;
     }
   }

}