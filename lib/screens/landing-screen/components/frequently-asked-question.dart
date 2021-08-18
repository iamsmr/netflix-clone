
import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/widgets.dart';

class FrequentlyAskedQuestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> faqs = [
      {
        "question": "What is netflix?",
        "answer": "Netflix is a streaming service that offers a wide variety of"
            " award-winning TV shows, movies, anime, documentaries, and more"
            " on thousands of internet-connected devices."
            "You can watch as much as you want, whenever you want without"
            " a single commercial – all for one low monthly price."
            " There's always something new to discover and new TV shows and"
            " movies are added every week!"
      },
      {
        "question": "How much does Netflix cost?",
        "answer": "Watch Netflix on your smartphone, tablet, Smart TV, laptop,"
            " or streaming device, all for one fixed monthly fee."
            " Plans range from JPY990 to JPY1,980 a month. No extra costs, no contracts."
      },
      {
        "question": "Where can I watch?",
        "answer": "Watch anywhere, anytime, on an "
            "unlimited number of devices. Sign in with your Netflix account to watch"
            " instantly on the web at netflix.com from your personal computer or on "
            "any internet-connected device that offers the Netflix app, including smart "
            "TVs, smartphones, tablets, streaming media players and game consoles.",
      },
      {
        "question": "How do I cancel?",
        "answer": "Netflix is flexible. There are no pesky "
            "contracts and no commitments. You can easily cancel your account online in two"
            " clicks. There are no cancellation fees – start or stop your "
            "account anytime.",
      },
      {
        "question": "What can I watch on Netflix?",
        "answer":
            "Netflix is flexible. There are no pesky contracts and no commitments."
                " You can easily cancel your account online in two clicks. There are no "
                "cancellation fees – start or stop your account anytime.",
      },
      {
        "question": "What can I watch on Netflix?",
        "answer":
            "Netflix has an extensive library of feature films, documentaries,"
                " TV shows, anime, award-winning Netflix originals, and more. Watch as much "
                "as you want, anytime you want."
      },
      {
        "question": "Is Netflix good for kids?",
        "answer": "The Netflix Kids experience is included in your "
            "membership to give parents control while kids enjoy family-friendly "
            "TV shows and movies in their own space."
      }
    ];
    return CenterView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            Text(
              "Frequently Asked Questions",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 670,
              child: Column(
                children: faqs
                    .map(
                      (faq) => Container(
                        margin: EdgeInsets.only(bottom: 10),
                        color: Colors.grey[900],
                        child: ExpansionTile(
                          // trailing: Icon(Icons.add),
                          childrenPadding: EdgeInsets.all(30),
                          collapsedIconColor: Colors.grey,
                          backgroundColor: Colors.grey[900],
                          title: Text(
                            faq["question"],
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          children: [
                            Text(
                              faq['answer'],
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Ready to watch? Enter your email to create or restart your membership.",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(height: 30),
            SubscribeButton()
          ],
        ),
      ),
    );
  }
}
