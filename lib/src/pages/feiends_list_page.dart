import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FriendsListPage extends StatelessWidget {
  const FriendsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [_searchBar(), _frendsList()],
      ),
    );
  }

  Widget _searchBar() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
        ),
      );

  Widget _frendsList() => Expanded(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60), // 노치바를 넣기 위한 여백 설정
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) => ListTile(
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0), // 텍스트 아래 여백 조정
                leading: Container(
                  margin: const EdgeInsets.only(left: 30), // 아이콘 상자 옆 여백 설정
                  width: 60, // 아이콘 영역의 폭 지정
                  height: 60, // 아이콘 영역의 높이 지정
                  decoration: BoxDecoration(
                    color: Colors.grey[300], // 사각형의 색상 설정
                    borderRadius:
                        BorderRadius.circular(5.0), // 사각형의 모서리를 둥글게 설정
                  ),
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 40, // 사용할 아이콘 설정
                    color: Colors.white, // 아이콘 색상 설정
                  ),
                ),
                title: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: "익명\n",
                      ),
                      TextSpan(
                        text: "상세메세지",
                        style: TextStyle(
                            color: Colors.grey, fontSize: 10 // 두 번째 텍스트에 대한 스타일
                            ),
                      ),
                    ],
                  ),
                ),
                subtitle: Text(
                  "010-1234-1234",
                  style: TextStyle(color: Colors.grey, fontSize: 14, height: 2),
                ),
              ),
            ),
          ),
        ),
      );
}
// title , subtitle 을 지정해놓고 textspan 으로 설정은 어떻게 하는가
// List 안에 박스 넣는법