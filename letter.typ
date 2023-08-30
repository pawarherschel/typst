#import "awesomeCV/template.typ": *
#show: layout
#set text(size: 12pt) //set global font size

#let dateSeparator = "/"

#let date = {[#datetime.today().day()] + dateSeparator + [#datetime.today().month()] + dateSeparator + [#datetime.today().year()]}

#let companyName = "Emergio Edu tech"
#let jobTitle = "Python Intern"

#letterHeader(
  myAddress: [Kharghar, \ Navi Mumbai, \ Maharashtra, \ India - 410210],
  recipientName: [#companyName],
  recipientAddress: [],
  date: [#date],
  subject: "Subject: Job Application for " + jobTitle,
)

Dear Hiring Manager,

I am excited to submit my application for the #jobTitle position at #companyName. I am a fresher with little to no experience. However, I am confident in my ability to make a valuable contribution to your team.

So far, I've engaged in diverse roles and projects that have enriched my skillset and knowledge. As the Deployment Head for the "SHAN: Shift Handover Application for Nurses" project at MGM's College of Engineering, Navi Mumbai, I led the deployment of a collaborative website, bridging engineering and medical students. I successfully deployed the frontend on Cloudflare Pages and the backend on Cyclic, utilizing the MERN Stack to create an efficient and seamless platform.

As for my projects, I've showcased my technical prowess and innovation. My "Booth Archiver" project, initially developed using Python, ported to Rust, demonstrates my ability to create practical tools. This CLI tool not only scrapes data from the Booth website but also generates Excel spreadsheet which makes it easier to search, sort, and filter the data, showcasing a blend of automation and data manipulation skills.

I've also ventured into software development through projects like "SQLx VRChat SQLite Test", where I experimented with the SQLx crate in Rust and integrated it with VRCX's SQLite database. I've also made "Stock Crasher" a program that fetches stock prices from Yahoo Finance and then sends it to VRChat via OSC protocol, which is then displayed on the chatbox.

Additionally, my participation in the GMTK2023 Game Jam resulted in the creation of "Cosmos Conquerors," a game that ingeniously reverses roles from Space Invaders, demonstrating that I have worked under strict deadlines (48 hours from start to finish).

I also have experience in DevOps and Cloud Computing. I used to rent a VPS from oxide.host to host a TailScale VPN server, and then used nginx to reverse proxy pass it to my PC. I used to host a lot of services on my PC, including jellyfin, nextcloud, my own website, and more. I also have experience with Docker and Docker Compose, as I have used them personally to host my own services. Now, I just use Cloudflare Pages to host my website, and Backblade B2 to store my files.

Collectively, my professional journey encompasses technical proficiency, and creative problem-solving, positioning me as a well-rounded professional ready to tackle complex challenges in the field.

As a highly motivated and detail-oriented individual, I am confident that I would thrive in the fast-paced and dynamic environment at #companyName. I am excited about the opportunity to work with a talented team of professionals and to continue developing my skills in data analysis.

Thank you for considering my application. I look forward to the opportunity to discuss my qualifications further.

Sincerely, \
// #letterSignature("/src/signature.png")
Herschel Pravin Pawar
#letterFooter()

