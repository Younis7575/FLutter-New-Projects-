import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduction',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The "Project and Research Hub" is a versatile system created to support final year students, MPhil, and PhD students. It serves as a centralized platform that benefits both FYP students and those pursuing MPhil and PhD degrees. Through this platform, students can access details about their supervisors and the projects they oversee, as well as explore projects and research conducted within their university in their specific fields. This system is designed to assist both FYP and research students pursuing MPhil and PhD degrees. By showcasing supervisor profiles, including their past projects, areas of expertise, and available time slots, students can make informed choices about their supervisors and projects. This way, they can easily select the right mentor and project that aligns with their interests and goals. In addition to facilitating mentorship and project selection, the "Project and Research Hub" offers several other features to enhance the academic journey. A comprehensive library of research materials, articles, and references relevant to various fields of study is accessible to students, aiding them in their research endeavors. Students have the opportunity to rate and provide feedback on their mentorship experiences, helping to continuously improve the quality of support and guidance. The platform remains up-to-date with the latest research trends, ensuring that students have access to the most current information and opportunities. The intuitive interface of the system makes it accessible to students of all levels, simplifying the process of finding the right mentor and project. Feedback and insights from users are actively sought and incorporated into the platform\'s ongoing development, making it a dynamic and responsive tool for academic success. The "Project and Research Hub" is not just a system; it is a catalyst for academic growth, research excellence, and the fulfillment of students\' academic and career aspirations. It\'s an indispensable resource that empowers students to make informed choices and achieve their highest potential in their academic journeys.',
              ),
              // Add similar Text widgets for other headings and paragraphs

              SizedBox(height: 20),

              Text(
                'Literature Review',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Numerous web applications denoted as [1-4], which have utilized various technology stacks, have already been launched in the market. Nevertheless, there is a demand for the creation of a system with enhanced and unique features that are notably absent in the majority of these existing applications. Today, there\'s a big requirement for a solution. Both students and supervisors are facing difficulties with their final year projects (FYPs). This situation has created a strong demand for something to be done to help them overcome these problems. The system would be strategically developed to offer aid to both FYP students and those immersed in MPhil and PhD research. By presenting profiles of supervisors, which encompass their past projects, specialized areas, and availability slots, students can make well-informed decisions about their preferred mentors and projects. This enables them to readily choose the mentorship and project that align most effectively with their individual interests and aspirations. Our system is meant to be a central hub where students, supervisors, and institutions can work together closely on academic projects. This hub will encourage teamwork and help improve the quality of research and learning. In the following table, we will discuss the literature review.',
              ),
              // Add similar Text widgets for other advantages

              SizedBox(height: 16),

              Text(
                'Problem Statement',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The lack of a centralized platform for efficient project and mentor selection is a significant issue that final year, MPhil, and PhD students encounter, and it is addressed with the “Project and Research Hub” software. Because of their fragmentation, current systems are unable to meet the varied demands of various student groups. With the creation of this system, we want to provide students a flexible solution that will let them view supervisor profiles, look into current research projects, and get project Suggestions based on their interests. This solves the inefficiencies of the current processes, which frequently result in mismatches in project selection and mentorship, resulting in irritation and less-than-ideal results.',
              ),
              SizedBox(height: 16),

              Text(
                'Problem Solution',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'To address the aforementioned challenges, we present the "Research and Project Hub," a web application that revolutionizes the process of academic project selection and mentorship. This solution aims to offer students a comprehensive platform where they can explore supervisor’s profiles, discover ongoing research projects, and receive personalized recommendations tailored to their academic pursuits. Our key objective is to create a seamless user experience through user-centric design and advanced algorithms. We plan to implement sophisticated search and recommendation algorithms, analyzing students\' preferences, academic history, and project domains to provide accurate suggestions. The platform will facilitate real-time updates on mentor availability and interactive data visualization to enhance the project selection process. Furthermore, we aim to incorporate a collaborative workspace where students can interact with mentors, share ideas, and collaborate on research projects.',
              ),
              SizedBox(height: 16),

              Text(
                'Advantages/Benefits of Proposed System',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The platform encourages students to explore projects beyond their immediate field, promoting interdisciplinary learning and research collaboration. Detailed supervisor profiles provide insight into supervisor’s expertise, facilitating transparent and effective supervisor-student pairing. Users benefit from real-time availability updates and interactive visualizations, ensuring they have accurate and up-to-date information for decision-making. Personalized recommendations help students choose projects that align with their academic goals, optimizing their learning path and career trajectory.',
              ),
              SizedBox(height: 16),

              Text(
                'Scope',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The scope of the "Research and Project Hub" project is to develop a web-based application that facilitates efficient project selection, mentor pairing, and academic collaboration for final year, MPhil, and PhD students. The system will include modules for user registration and authentication, mentor profiles showcasing expertise and past projects, a comprehensive repository of ongoing research initiatives, advanced recommendation algorithms, interactive visualizations for project progress, and a collaborative workspace for communication between students and mentors. The platform will cater to different academic levels and provide personalized recommendations based on user preferences and academic history. However, the scope does not include administrative features for universities, real-time video conferencing, or financial transaction integration.',
              ),
              // Add similar Text widgets for other scope details
            ],
          ),
        ),
      ),
    );
  }
}
