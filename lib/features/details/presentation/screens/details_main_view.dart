import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/features/details/presentation/screens/widgets/condition_daily_item.dart';
import 'package:weather_app/features/details/presentation/screens/widgets/condition_hourly_item.dart';
import 'package:weather_app/features/details/presentation/screens/widgets/header_weather_now.dart';
import 'package:weather_app/features/home/data/model/weather_data.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key, required this.data}) : super(key: key);
  final WeatherData data;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderDetailsWeatherNow(
          data: widget.data,
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.data.forecastData.days[0].hourlyList.length,
            itemBuilder: (context, index) {
              return ConditionHourly(
                data: widget.data.forecastData.days[0].hourlyList[index],
              );
            },
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: ColorsUtil.hexToColor("#FF708df3"),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 6, left: 6),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 12,
                    color: DateTime.now().hour < 12 ? ColorsUtil.hexToColor("#FF010c38") : ColorsUtil.hexToColor("#FF4d70f2"),
                  );
                },
                scrollDirection: Axis.vertical,
                itemCount: widget.data.forecastData.days.length,
                itemBuilder: (context, index) {
                  return ConditionDaily(
                    data: widget.data.forecastData.days[index],
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
