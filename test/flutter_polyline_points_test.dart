import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_polyline_points/src/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get list of coordinates from two geographical positions', () async {
    final polylinePoints = PolylinePoints();
    final request = PolylineRequest(
      origin: PointLatLng(6.5212402, 3.3679965),
      destination: PointLatLng(6.595680, 3.337030),
      mode: TravelMode.driving,
      wayPoints: [],
      avoidHighways: false,
      avoidTolls: false,
      avoidFerries: false,
      optimizeWaypoints: false,
      alternatives: false,
    );
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      request: request,
        googleApiKey: Constants.API_KEY,
        );
    assert(result.points.isNotEmpty == true);
  });

  test('get list of coordinates from an encoded String', () {
    print("Writing a test is very easy");
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points =
        polylinePoints.decodePolyline("_p~iF~ps|U_ulLnnqC_mqNvxq`@");
    print("Answer ---- ");
    print(points);
    assert(points.length > 0);
  });
}
