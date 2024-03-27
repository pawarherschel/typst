#import "template/template.typ": *
#show: layout
#set text(size: 12pt) //set global font size

#let dateSeparator = "/"

#let date = {[#datetime.today().day()] + dateSeparator + [#datetime.today().month()] + dateSeparator + [#datetime.today().year()]}

#let companyName = "Zelis"
#let jobTitle = "RUST Programmer - Data Processing & Back End Development"
#let hiringManager = "Mohan Ankam"
#letterHeader(
  myAddress: [Kharghar, \ Navi Mumbai, \ Maharashtra, \ India - 410210],
  recipientName: [#companyName],
  recipientAddress: [],
  date: [#date],
  subject: "Subject: Request for Internship Opportunity as a " + jobTitle,
)

Dear #hiringManager,

I recently came across your job posting for the position of #jobTitle at #companyName, and I am writing to express my sincere interest in joining your team.

Although I understand that the job description requires 3–5 years of professional programming experience, including 1–2 years of Rust, I believe that my passion for programming and foundational knowledge in Rust could make me a potential asset for your organization.
Even though I lack the necessary number of years of work experience, I've been focusing on honing my Rust skills by developing my own projects for the past year.

Currently, I am working on a personal project which requires me to develop a data processing pipeline using Rust.
The project's temporary name is `VRCX Insights`.
Specifically, the project focuses on extracting data from an SQLite3 database, processing it to derive meaningful insights, and implementing algorithms to identify potential friend circles within the dataset.
Another personal project involves automating data extraction from a website before REST APIs were readily available for the website.
In this project, I developed a web scraping tool to request data from the target website, parsing through the HTML to extract all relevant information.
I did the proof of concept using python first, but then migrated it to Rust.
In both these projects I used Rayon for parallelizing the workload, but in the `VRCX Insights` project I had to move away from Rayon since I was encountering deadlocks and then rewrote the entire main loop using Tokio with the multithreading runtime.
I believe these endeavors have not only deepened my understanding of Rust but also provided me with practical experience in designing efficient data processing pipelines, which I believe is a crucial skill at Zelis.

While I may not meet the requirements outlined in the job description, I am eager to demonstrate my capabilities and commitment through an internship opportunity at Zelis.
I am confident that with guidance and mentorship, I can quickly adapt and contribute effectively to your team.

I would like to talk more about how my skills and experience match what your team needs. 
Furthermore, I would like to ask for scheduling a brief interview at your earliest convenience. 
I am flexible and willing to accommodate to your schedule.

Thank you for reading my application. I am enthusiastic about the possibility of contributing to Zelis and look forward to the opportunity to discuss how I can contribute to your team.

Sincerely, \
// #letterSignature("/src/signature.png")
Herschel Pravin Pawar
#letterFooter()

