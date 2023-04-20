import 'package:flutter/material.dart';

import 'message.dart';

enum ChatScene { Answer, learning, breakIce }

class ChatModel extends ChangeNotifier {
  ChatScene _chatScene = ChatScene.breakIce;
  List<Message> messages = [
    Message('Bot', DateTime.now(),
        "你好，吕笑晨同学，很高兴见到你！我是你们的辅导老师。祝贺你们进入了新的学年！我非常期待和你们一起度过这段时间。如果你有任何问题或需要帮助，请随时来找我，我愿意尽我所能去帮助你。")
  ];
  List<String> iceBreakMsgs = [
    '你好，吕笑晨同学，很高兴见到你！我是你们的辅导老师。祝贺你们进入了新的学年！我非常期待和你们一起度过这段时间。如果你有任何问题或需要帮助，请随时来找我，我愿意尽我所能去帮助你。'
  ];
  final List<String> learnMsgs = [
    '''1.当前学习等级是中级会计职称，无法满足职级晋升工龄要求。
2.针对时间零散程度，建议修正学习计划，分为四个阶段：
基础阶段：建议学习时间为2个月，选择教材为《会计基础》、《财务管理基础》、《经济法基础》等，重点学习会计基础知识和财务管理基础知识。
强化阶段：建议学习时间为3个月，选择教材为《中级会计实务》、《财务管理》、《经济法》等，重点学习中级会计实务和财务管理知识。
真题阶段：建议学习时间为2个月，选择教材为历年真题，重点练习历年真题，熟悉考试形式和考点。
冲刺阶段：建议学习时间为1个月，选择教材为《高级会计实务》等，重点复习高级会计实务知识，做好最后的冲刺准备。

3.加入一些辅助材料准备，可以引入知乎高质量的资料，比如知乎上的会计专家分享的学习笔记、考试经验等，可以帮助提高学习效率和考试成绩。

4.根据生活中的角色提供一些娱乐活动，做到劳逸结合。作为宝妈，可以参加一些亲子活动，比如亲子游戏、亲子DIY等，既可以陪伴孩子，又可以放松心情，缓解学习压力。

5.根据往年的考试资料，建议报名时间为每年的3月份，考试准备时间为4个月，考试时间为每年的7月份。需要提前做好考试报名和准备工作，合理安排时间，做好考试准备，争取取得好成绩。
''',
  ];
  final List<String> answerMsgs = [
    '''
公司在5月1日向供应商订购了一批货物，总金额为10,000元，其中5,000元是应在6月1日支付的应付款项，另外5,000元是预付款。公司在5月31日收到了货物，并将其全部入库。请问，在公司5月31日的资产负债表中，应如何记录这笔交易？（）
A. 应付款项 5,000元，预付款 5,000元，应付账款 10,000元
B. 应付款项 5,000元，预付款 5,000元，存货 10,000元
C. 应付账款 10,000元，预付款 5,000元，存货 5,000元
D. 应付账款 10,000元，预付款 5,000元，存货 10,000元
涉及到的知识点：会计基础知识-资产负债表
思考步骤：
1. 分析交易内容：公司在5月1日向供应商订购了货物，总金额为10,000元，其中5,000元是应在6月1日支付的应付款项，另外5,000元是预付款。公司在5月31日收到了货物，并将其全部入库。
2. 判断交易对公司资产负债表的影响：此笔交易将对公司的应付款项、预付款和存货等账户产生影响。
3. 根据交易内容以及资产负债表的基本原则进行分析，判断应该如何记录这笔交易。
解题思路：根据分析，此笔交易应该分别记录应付款项 5,000元，预付款 5,000元和存货 5,000元。因为货物在5月31日全部入库，因此应记录存货账户，而应付款项只有5,000元是应在6月1日支付的，因此应该只记录5,000元，而预付款5,000元在5月31日已经支付了，应该在当期记录
请问您选择的答案是什么呢？
''',
    '''
恭喜你，答对了！这道题的解答思路就是要明确这笔交易中涉及到的会计科目，将其归类到资产、负债或者所有者权益这三个大类中，最后根据会计准则和会计处理方法确定在资产负债表中的表现形式。

如果你还想练习类似的会计题目，可以尝试以下的题目：

公司向供应商购买了一批货物，总金额为20,000元，其中10,000元是应在7月1日支付的应付款项，另外10,000元是预付款。请问，在公司6月30日的资产负债表中，应如何记录这笔交易？

A. 应付款项 10,000元，预付款 10,000元，应付账款 20,000元
B. 应付款项 10,000元，预付款 10,000元，存货 20,000元
C. 应付账款 20,000元，预付款 10,000元，存货 10,000元
D. 应付账款 20,000元，预付款 10,000元，存货 20,000元
''',
    '''
恭喜你，答对了！这道题的解答思路和上一道题一样，明确涉及到的会计科目，将其归类到资产、负债或者所有者权益这三个大类中，最后根据会计准则和会计处理方法确定在资产负债表中的表现形式。

如果你还想练习类似的会计题目，可以尝试以下的题目：

公司在6月1日向供应商订购了一批货物，总金额为15,000元，其中5,000元是应在6月30日支付的应付款项，另外10,000元是预付款。公司在6月15日收到了货物，并将其全部入库。请问，在公司6月30日的资产负债表中，应如何记录这笔交易？

A. 应付款项 5,000元，预付款 10,000元，应付账款 5,000元，存货 10,000元
B. 应付款项 5,000元，预付款 10,000元，应付账款 10,000元，存货 5,000元
C. 应付账款 15,000元，预付款 10,000元，存货 5,000元
D. 应付账款 15,000元，预付款 5,000元，存货 10,000元
''',
    '''
很抱歉，答案不正确。

这道题涉及到的会计科目有应付款项、预付款和存货。应付款项和预付款分别是负债类和资产类科目，存货是资产类科目。

根据这笔交易，公司在6月15日收到了货物，并将其全部入库，因此应该记入存货这个科目中。在6月30日的资产负债表中，应该将应付款项和预付款计入负债类科目中，存货计入资产类科目中。

因此，正确答案应该是B. 应付款项 5,000元，预付款 10,000元，应付账款 10,000元，存货 5,000元。

如果你还有其他问题或者需要进一步练习，请随时提出。
''',
  ];

  ChatScene get chatScene => _chatScene;
  int msgIndex = 0;
  void setChatScene(ChatScene scene) {
    _chatScene = scene;
    switch (scene) {
      case ChatScene.Answer:
        messages = [
          Message.fromBotMsg(answerMsgs[0], ["A", "B", "C", "D"])
        ];
        msgIndex = 1;
        break;
      case ChatScene.learning:
        messages = [Message.fromBotMsg(learnMsgs[0])];
        msgIndex = 1;
        break;
      case ChatScene.breakIce:
        msgIndex = 0;
        break;
    }
    notifyListeners();
  }

  addMsg(Message msg) {
    messages.add(msg);
    notifyListeners();
  }

  void msgIndexIncrement() {
    msgIndex++;
    notifyListeners();
  }
}