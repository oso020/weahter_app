
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubites/get_weather_cubit/get_weather_cubit.dart';


class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search view"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            child: TextField(
              onSubmitted: (value) async {
              await  BlocProvider.of<GetWeatherCubit>(context)
                    .getCurrentWeather(cityName: value);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(30),
                  labelText: "Search",
                  hintText: "Enter city Name",
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange)),
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search)),
                  border: const OutlineInputBorder()),
            ),
          ),
        ),
      ),
    );
  }
}
