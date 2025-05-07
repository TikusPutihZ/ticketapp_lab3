import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ticketapp_lab3/base/bottom_nav_bar.dart';
import 'package:ticketapp_lab3/base/utils/app_routes.dart';
import 'package:ticketapp_lab3/screens/all_tickets.dart';
import 'package:ticketapp_lab3/screens/home/all_hotels.dart';
import 'package:ticketapp_lab3/screens/hotel_detail.dart';
import 'package:ticketapp_lab3/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, 
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
