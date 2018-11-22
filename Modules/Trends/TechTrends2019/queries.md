Add 2018 & 20198 trends to DE
Refactor all trends to Map Dan as the author


| | |
|---|---|
Moonshots  | Strategy
IoT next-gen platforms  | foundational / Intelligence
Action at the edge | foundational / Intelligence
Information enlightenment  |  foundational / Intelligence 
GDPR     |  foundational / foundational
Data centers  | Infra 


https://www.dxc.technology/2019
 DXC Technology Trends 2019



match (tt:TechnologyTrend {name:'DanTrend1'})
set tt.name="Enterprises go after digital business moonshots",
tt.description="In 2019, more enterprises will make bet-the-company commitments to digital business. It’s becoming a new kind of corporate race as more companies adopt these moonshot goals. Just as in the space race, we can expect to see a range of innovation, with new business models, new technologies and even entire new businesses built from digital. But in following this digital trend, enterprises will have to beat back resistance from those following hybrid traditional-digital strategies and internally competing business unit strategies — and unify the entire business around a common digital approach.  Focus on executing a single, well-defined digital strategy. Concentrate your talent, funding, operating model and executive attention on this. Make a major strategic bet, not a minor bet coupled with some hedge bets. Show the organization what it looks like to be different and what it feels like to be agile. A moonshot galvanizes people — everyone works toward it. Moonshot digital projects will attract the best minds. Get it right, learn fast, execute forward.  A unified digital strategy between the business and IT is the only way to unload the compounding technical debt that is holding companies back from exploring moonshot digital initiatives. It’s all about focusing and accelerating digital transformation, having the stamina to succeed and achieving nonlinear growth."
return tt


match (tt:TechnologyTrend {name:'DanTrend2'})
set tt.name="Enterprises adopt next-generation IoT platforms",
tt.description="As enterprises map their physical world to an intelligence-rich digital one, smart “things” will become a driving force. Enterprises will start to implement next-generation platforms in 2019 that can analyze large quantities of industry-specific data from the internet of things (IoT) and use artificial intelligence (AI) and machine learning (ML) to find novel correlations between data previously thought to be independent. This advance will enable enterprises to make new discoveries.  This digital trend is particularly exciting, as without these platforms, humans would be unable to make these hyperdimensional correlations. There are too many factors for the human brain to consider. Further, the discoveries from these new correlations may surprise us and conflict with conventional wisdom. We must learn anew.  For example, precision medicine integrates data from new sources (such as WiFi-connected heart monitors, fitness watches, location data or the human genome) with traditional sources (such as blood chemistry or dietary information). Working with these multiple data inputs and their correlations will result in more precise diagnoses and treatment plans.  Autonomous driving demonstrates the importance of real-time IoT data pipelines through analytics and into improved execution. Data from the car must be constantly analyzed in real time, at the source, to execute on an event. Should a race car make a pit stop? Data from the car informs that decision, so the analytics must be done at the racetrack in near real time. The data can also be sent to headquarters for processing with other data to better understand a particular event. Having the right IoT platform to analyze the data both at the edge and the core will enable enterprises to make the most of IoT by discovering new hyperdimensional correlations in the data, leading to fresh insights, enhanced decision making and better business outcomes."
return tt

match (tt:TechnologyTrend {name:'DanTrend3'})
set tt.name="Action at the edge disrupts the cloud",
tt.description="As the race car example illustrates, in 2019 more apps and data will move to the edge, potentially disrupting the cloud model. As technology becomes embedded in everything everywhere, and data grows to an estimated 163 zettabytes by 2025,1 enterprises will manage apps and data differently.  The IT industry continues to build out what we call “the Matrix,” the pervasive, intelligent IT infrastructure that goes beyond cloud to include edge computing, IoT platforms, machine intelligence, augmented reality/virtual reality, blockchain and more. But the latest digital trend is that companies are building completely new ways for us to leverage the Matrix, including decentralized applications (DApps). DApps are a potential disruption to the cloud model because they shift power from a small number of central players to a large number of participants.  Data “gravity” becomes a primary design principle for new multi-latency systems. Context is most frequently local, and the ability to maximize the value of reaction time is local as well. Data gravity draws data together locally, and with the increased size of data graphs, so too come the analytics. As these analytics begin to drive intelligent actions, more data and actors are drawn into the local orbit.  This brings us back to the Matrix, to put that intelligence — and us — ever closer to the data. Therefore, we are seeing shifts toward event-driven applications and serverless architectures that allow very small, very specific applications to run in lightweight environments that could be as close as the device in your pocket, on your wrist, embedded in your arm, retrofitted to your desk or outside your house on a pylon. And yes, 5G wireless will change the data accumulation patterns in disruptive ways."
return tt


match (tt:TechnologyTrend {name:'DanTrend4'})
set tt.name="Enterprises enter an age of Information Enlightenment",
tt.description="Given the tremendous volumes of data (digital trend 3), and data’s high dimensionality (digital trend 2), enterprises must react faster and faster to the data, especially since its value decays over time. The value may be highest right when the data is created (e.g., as the race car goes around the track) but much lower only seconds or minutes later (e.g., when a tire has blown before a pit stop has been made). And that data may have different values depending on the context.   So, in 2019, leveraging information will become a core competency. In this age of Information Enlightenment, companies will understand their information ecosystems better and know what to do to make better, faster, data-driven decisions. ML tools will be key for training systems and speeding response times. Enterprises will realize it’s sometimes better to take action based on a strong probability of being right (e.g., 70 percent) than hold out for being perfect (100 percent). That means paying attention to how ML rules are built. AI will come of age as it gets baked into applications. Whereas ML produces a result based on historic data it has learned from, AI can provide an intelligent response. ML might tell you that Sue typically takes 3 days to review a report, whereas AI might send a report to Sue’s assistant because Sue is traveling and it will likely take her 6 days to review the report. AI takes what ML “knows,” factors in other information and exhibits intelligent behaviours. 
Companies that experience the Information Enlightenment will realize that AI and ML can improve service offerings and generate new sources of revenue, but only with the right algorithms, model orchestration, data and infrastructure. This digital trend will elevate metrics such as Lift, Root Mean Squared Error and Information Gain from obscure data science concepts to key business metrics."
return tt


match (tt:TechnologyTrend {name:'DanTrend5'})
set tt.name="Enterprises redesign customer experiences amid stronger data privacy rules",
tt.description="In 2019, protecting customers’ personal data will force companies to rethink their digital strategy as the full effects of the European Union’s General Data Protection Regulation (GDPR) set in. Failure to comply with GDPR will thwart an enterprise’s ability to conduct business globally. Innovative companies will see this digital trend as an opportunity to deliver better customer experiences and to build customer trust and loyalty.  To this end, enterprises must have a clear strategy for managing customer data and processes. These run the gamut from customer service, sales and marketing to transaction processing, and product research and development. Enterprises will need to consider new ways to attract customers and generate revenue. They will have to consider changes across their data landscape, especially in marketing databases, demand generation systems and customer relationship management systems. Enterprises will also reimagine their broader information ecosystems with partners and suppliers, where data privacy rules have a ripple effect and potentially limit the value of other data in the ecosystem. They will examine data integration capabilities, quality, governance and security. They will create privacy-centric information ecosystems, with analytics and security as the foundation, as they aim to deliver secure interactions and superior customer experiences."
return tt


match (tt:TechnologyTrend {name:'DanTrend6'})
set tt.name="Enterprises begin closing their data centers",
tt.description="The enterprise data center is slowly dying. In 2019 we expect to see a noticeable shift of enterprise data center workloads to multi-tenant data centers in the public cloud. Two forces are at play in this digital trend: information processing is becoming a utility, and customers (and their data) are widely distributed. To operate more efficiently and derive more value from their data, enterprises are shifting to public cloud providers, who have massive bandwidth and strategically placed data centers. Think of it as value shifting from single houses to apartment complexes.  In effect, enterprise data centers will become virtual compartments in various multi-tenant public clouds and thus will be shut down except for their mainframe workloads. The mainframe workloads will migrate to specialized data centers that are heavily leveraged until they, too, eventually go away. We will see a lot of “lift and shift” in 2019, but the trend will play out over the next 3 to 5 years, as cloud migration gives way to “built for cloud” replacements.  The decisions companies make in 2019 will determine how they fare in our evolving digital world. Taking these six digital trends into account will help to ensure that their digital transformation journey continues to be successful."
return tt


--- 

2018 trends

Cyber resilience
Artificial intelligence
Digital business extensions
Re-platforming the Enterprise
Digital talent
Quantified enterprise


 DXC Technology Trends 2018