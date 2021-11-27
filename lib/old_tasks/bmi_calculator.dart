import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool genderMale = false;
  double height = 66;
  double weight = 140;
  double age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Color(0xff131429),
          elevation: 5),
      body: Container(
        color: Color(0xff131427),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      genderMale = true;
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 24),
                              child: Image.asset(
                            "images/male.png",
                            height: 100,
                            width: 120,
                            fit: BoxFit.contain,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          // Icon(
                          //   Icons.male_sharp,
                          //   size: 100,
                          //   color: Colors.white,
                          // ),
                          Text(
                            "MALE",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            genderMale ? Color(0xff1b1b2b) : Color(0xff232337),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      genderMale = false;
                      setState(() {});
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/female.png",
                            height: 80,
                            width: 80,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Icon(
                          //   Icons.female,
                          //   size: 100,
                          //   color: Colors.white,
                          // ),
                          Text(
                            "FEMALE",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:
                            genderMale ? Color(0xff232337) : Color(0xff1b1b2b),
                      ),
                    ),
                  ),
                ],
              ),
            ) //male female
            ,
            Container(
              margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                  color: Color(0xff232337),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toInt().toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 7),
                        child: Text(
                          " in",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "${getheightValue(height)}",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                  ),
                  Slider(
                    value: height,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                    min: 25,
                    max: 97,
                    label: "$height",
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey[700],
                    thumbColor: Colors.pink,
                  )
                ],
              ),
            ) //height bar
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ), //weight
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weight.toInt().toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 38,
                                fontWeight: FontWeight.w900),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 7),
                            child: Text(
                              "lb",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          )
                        ],
                      ), //weight
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                if (weight > 135)
                                  setState(() {
                                    weight--;
                                  });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                if (weight < 145)
                                  setState(() {
                                    weight++;
                                  });
                              },
                              icon: Icon(Icons.add),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff232337),
                  ),
                ), //weight

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ), //weight
                      Text(
                        age.toInt().toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w900),
                      ),
                      //weight
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                if (age > 16)
                                  setState(() {
                                    age--;
                                  });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {
                                if (age < 25)
                                  setState(() {
                                    age++;
                                  });
                              },
                              icon: Icon(Icons.add),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff232337),
                  ),
                ), //age
              ],
            ), //weight & age
            Expanded(
              child: InkWell(
                onTap: () {
                  calculateBmi();
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  color: Colors.pink,
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ) //calculate button
          ],
        ),
      ),
    );
  }

  String getheightValue(double heigh) {
    heigh = (heigh / 12) + 0.1;
    var values = heigh.toString().split(".");

    return "${values[0]}' ${values[1].substring(0, 1)}\" ";
  }

  void calculateBmi() {
    double perfectWeight = 0;
    if (genderMale) {
      perfectWeight = 48 + 1.1 * (height * 2.54 - 150);
    } else {
      perfectWeight = 45 + 0.9 * (height * 2.54 - 150);
    }
    double totalResult = perfectWeight / weight * 100;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Perfect Weight Calculator"),
        content: Text("Percent : ${totalResult.toInt()} %"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context, "Ok"),
              child: const Text("OK"))
        ],
      ),
    );
  }
}
