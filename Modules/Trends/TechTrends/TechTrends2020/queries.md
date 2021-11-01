First create place holder trends via the DE UI (This ensures all the correct relationships are in place)

**INCLUDE THE CORRECT REFERENCE TEXT AND URL**

## Change the Author

- get the date value from the placeholder trends



~~~
match (tt:TechnologyTrend {name:'DanTrend1'}),(p:Person {name:'Dan Hushon'})
merge (p)-[:CREATED {createDate:1574326794057}]->(tt)
return tt,p
~~~
**REPEAT FOR EACH PLACEHOLDER**

### Remove the placeholder creator

~~~
match (tt:TechnologyTrend {name:'DanTrend1'})-[r:CREATED]-(p:Person{name:'David Stevens'}) delete r
~~~
**REPEAT FOR EACH PLACEHOLDER**

## Update the text


~~~
match (tt:TechnologyTrend {name:'DanTrend1'})
set tt.name="AI redefines professional services",
tt.description="In 2020, professional services firms will struggle with how AI can — or should — change their professions. AI is revolutionizing professions such as legal, accounting, healthcare and education in two ways: democratization and decision support. AI [democratizes professional services](https://www.dxc.technology/analytics/insights/146174-ai_predictions_for_2019_2021) by extending customization and personalized services to a broad base of customers through low-cost intelligent agents. These software agents can [augment and improve](https://www.dxc.technology/workplace_and_mobility/insights/143658-how_digital_solutions_deliver_the_support_experience_employees_want) many aspects of our lives — but will not take them over. **AI is revolutionizing professions such as legal, accounting, healthcare and education in two ways: democratization and decision support.** At the same time, AI will benefit professionals in those industries by providing new insights, managing information overload and reducing human error. As these decision-support systems get more sophisticated, though, professionals may come to rely on them too much, leaving them without the skills to pass on to others in the field. Companies will get a better understanding of whether there is a trade-off between democratization and using AI assistants on the one hand, and potential skill loss on the other. Leaders will define ideal interactions between AI agents and people, designing mutually beneficial outcomes. Businesses should protect against unintended consequences by training people to quickly detect improper bias or unsafe behavior of the AI and respond with corrective action. But overall, AI will bring forward intelligence hidden in systems, empowering consumers and complementing professionals’ expertise."
return tt
~~~

~~~
match (tt:TechnologyTrend {name:'DanTrend2'})
set tt.name="Design thinking shifts from IT services for people to IT services for machines",
tt.description="Systems design thinking is shifting as IT services are increasingly designed for machines instead of people, and as processing moves closer to where data resides (extending [**trend 3 we predicted last year**](https://www.dxc.technology/innovation/insights/145729-6_digital_trends_to_accelerate_business_transformation_in_2019). This will usher in new design choices and transformational architectures, and will push companies to more aggressively pursue [**IT modernization**](https://www.dxc.technology/digital_transformation/insights/147254-use_it_modernization_to_accelerate_and_scale_business_transformation).**Systems design thinking is shifting as IT services are increasingly designed for machines instead of people, and as processing moves closer to where data resides.**  Enterprises will benefit from faster decisions, owing to the fact that microprocessors can make decisions in nanoseconds. Humans take a little longer (0.5 to 1 second). And those decisions will benefit from a richer, near-real-time dataset. Stream and batch processing architectures are constantly being updated with better machine-to-machine (M2M) capabilities. Analytics will continue moving to the network edge where the data is, and will use the reduced propagation delays to make better decisions faster and more cheaply.These design patterns deliver richer experiences to consumers because they enable substantially more “local” processing with faster, better outcomes. Consider driving. Signs range from smart parking meters to smart traffic signals to smart traffic flow to, eventually, fully autonomous cars and smart cities enabled by cooperative edges that won’t need to be connected to remote, centralized data centers."
return tt
~~~

~~~
match (tt:TechnologyTrend {name:'DanTrend3'})
set tt.name="The value of data increases in ecosystems",
tt.description="The idea that information wants to be shared will be on full display in 2020 as enterprises pool their data in ecosystems to achieve business goals. Autonomous driving sensor data is being shared across car companies for use in their car models. Healthcare data can be shared across providers and [**public health agencies**](https://www.dxc.technology/healthcare/insights/145323-one_of_medicine_s_largest_research_projects_just_launched_nationally_all_of_us_research_program) to improve health outcomes and personalized wellness outcomes. Financial data can be shared across banks and investment firms to get the best yields for a client-provided strategy.However, for these ecosystems to flourish, we need [**trust**](https://blogs.dxc.technology/2019/08/21/the-importance-of-data-ethics-in-healthcare-it/) mechanisms that validate both the individual’s right to share and the enterprise’s right to consume data. Self-sovereign identity standards such as Decentralized Identifiers (DIDs), verifiable credentials based on zero-knowledge proofs and blockchain-based consent are emerging to address this.Through these technologies and a combination of AI, internet of things and distributed ledger technology, we will see manufacturers, service providers and consumers willing to share data in [**data exchanges**](https://blogs.dxc.technology/2019/11/06/making-the-leap-to-rich-data-sharing-in-healthcare-through-digital-transformation/). The value of these ecosystems will grow with increased consent from individuals to use their personal data, reinforced by the General Data Protection Regulation (GDPR).**Key to unlocking business value is peer-to-peer consent management to ensure data compliance, plus AI and analytics to discover new insights.**With these components in place, expect ecosystems to grow rapidly, underscoring the importance of data and data-driven insights. CEOs will look to identify and pursue ecosystem-centric business models and trading partners, where trusted and compliant data sharing is fundamental to improving operations and offerings. Line-of-business leaders should understand that key to unlocking business value is peer-to-peer consent management to ensure data compliance, plus AI and analytics to discover new insights. Meanwhile, the technical community will be working to create mechanisms for identity and consent to help govern the use of our personal data and ensure that the value from this data is shared responsibly."
return tt
~~~

~~~
match (tt:TechnologyTrend {name:'DanTrend4'})
set tt.name="Teams, not superstars, are the high performers",
tt.description="Companies are starting to recognize that simply going faster (e.g., holding more meetings) doesn’t unlock the organization’s full potential; companies must create high-performing teams.Successful high-performing teams are empowered to make key decisions. These teams understand their mission and boundaries and are trusted. They communicate and share information across teams, with a record of who participated in the decision process and how. A flexible structure of multidisciplinary teams is adaptable and can provide many options, in contrast to the limited options of a traditional pyramid with siloed teams.**A flexible structure of multidisciplinary teams is adaptable and can provide many options, in contrast to the limited options of a traditional pyramid with siloed teams.**Organizing for a dynamic and complex business environment requires talent acquisition and development strategies that rely heavily on interconnected teams of multidimensional individuals, rather than siloed teams of “superstars.” This shift from so-called 10x individuals to 20x teams is paramount for achieving speed, flexibility and business results. The focus is on [**making teams productive**](https://www.dxc.technology/workplace_and_mobility/insights/135966-redefine_your_digital_workplace_as_an_innovation_center); the massive growth of team environments such as Slack and Microsoft Teams underscores the fact that enterprises are eager to harness this productivity. Teammates are double-deep (have both business and technology knowledge), learn from each other daily, discover synergies and optimize in ways that a less intimate model would not allow. People will participate in multiple diverse teams.[**Enterprises will restructure**](https://blogs.dxc.technology/2019/10/29/4-tips-for-organizations-to-reap-the-benefits-of-the-gig-economy/) to expand interconnected teams across the whole organization. And ultimately, building better teams will build better individuals and enterprises. The ability to develop and manage a network of high-performing teams will be key to business success in the 2020s."
return tt
~~~


match (tt:TechnologyTrend {name:'A new wave of business leaders accelerates business transformation'})
set tt.description="A change in business leadership will gain momentum in 2020 as technology-driven marketplaces proliferate. New leaders will advocate for technologies that can improve the enterprise’s speed, agility, productivity and innovative advantage. As technology evangelists, these leaders work at the C level to shape digital strategy while engaging in major initiatives such as smart products, mergers and acquisitions, intellectual property development and learning. This is a different mission for technology leaders than providing IT, and it requires new skills and culture.  <br><br>**New leaders will advocate for technologies that can improve the enterprise’s speed, agility, productivity and innovative advantage.** <br><br>These new leaders are needed in the middle of the organization, too, where inertia is often a challenge. Here are tips for becoming a modern business leader: <br>- **Build awareness**. Scout the emerging technology scene for trends and insights. <br>- **Be more open**. Participate in open initiatives and share thinking with partners or the wider marketplace. <br>- **Get access to R&D**. Establish ties with leading universities and government agencies, and look to apply R&D from one industry to another. <br>- [**Push agile culture**](https://www.dxc.technology/application_services/insights/147102-overcoming_common_mistakes_in_devops_agile_and_app_modernization).Focus on multidisciplinary teams, experimentation and learning, and business outcomes. <br><br>Like their teams, the new leaders are double-deep, with a solid understanding of the business and technology. As they come to the fore, we’ll see more tangible business value realized from emerging technologies, and business transformations will accelerate."
return tt



---

### format improvements

match (tt:TechnologyTrend {name:'AI redefines professional services'})
set tt.description="In 2020, professional services firms will struggle with how AI can — or should — change their professions. AI is revolutionizing professions such as legal, accounting, healthcare and education in two ways: democratization and decision support.<br>AI [democratizes professional services](https://www.dxc.technology/analytics/insights/146174-ai_predictions_for_2019_2021) by extending customization and personalized services to a broad base of customers through low-cost intelligent agents. These software agents can [augment and improve](https://www.dxc.technology/workplace_and_mobility/insights/143658-how_digital_solutions_deliver_the_support_experience_employees_want) many aspects of our lives — but will not take them over.<br><br>**AI is revolutionizing professions such as legal, accounting, healthcare and education in two ways: democratization and decision support.**<br><br>At the same time, AI will benefit professionals in those industries by providing new insights, managing information overload and reducing human error. As these decision-support systems get more sophisticated, though, professionals may come to rely on them too much, leaving them without the skills to pass on to others in the field.<br>Companies will get a better understanding of whether there is a trade-off between democratization and using AI assistants on the one hand, and potential skill loss on the other.<br><br>Leaders will define ideal interactions between AI agents and people, designing mutually beneficial outcomes. Businesses should protect against unintended consequences by training people to quickly detect improper bias or unsafe behavior of the AI and respond with corrective action. But overall, AI will bring forward intelligence hidden in systems, empowering consumers and complementing professionals’ expertise."
return tt


match (tt:TechnologyTrend {name:'Design thinking shifts from IT services for people to IT services for machines'})
set tt.description="Systems design thinking is shifting as IT services are increasingly designed for machines instead of people, and as processing moves closer to where data resides (extending [**trend 3 we predicted last year**](https://www.dxc.technology/innovation/insights/145729-6_digital_trends_to_accelerate_business_transformation_in_2019)). This will usher in new design choices and transformational architectures, and will push companies to more aggressively pursue [**IT modernization**](https://www.dxc.technology/digital_transformation/insights/147254-use_it_modernization_to_accelerate_and_scale_business_transformation).<br><br>**Systems design thinking is shifting as IT services are increasingly designed for machines instead of people, and as processing moves closer to where data resides.** <br><br> Enterprises will benefit from faster decisions, owing to the fact that microprocessors can make decisions in nanoseconds. Humans take a little longer (0.5 to 1 second). And those decisions will benefit from a richer, near-real-time dataset. Stream and batch processing architectures are constantly being updated with better machine-to-machine (M2M) capabilities. Analytics will continue moving to the network edge where the data is, and will use the reduced propagation delays to make better decisions faster and more cheaply.<br>These design patterns deliver richer experiences to consumers because they enable substantially more “local” processing with faster, better outcomes. Consider driving. Signs range from smart parking meters to smart traffic signals to smart traffic flow to, eventually, fully autonomous cars and smart cities enabled by cooperative edges that won’t need to be connected to remote, centralized data centers."
return tt


match (tt:TechnologyTrend {name:'The value of data increases in ecosystems'})
set tt.description="The idea that information wants to be shared will be on full display in 2020 as enterprises pool their data in ecosystems to achieve business goals. Autonomous driving sensor data is being shared across car companies for use in their car models. Healthcare data can be shared across providers and [**public health agencies**](https://www.dxc.technology/healthcare/insights/145323-one_of_medicine_s_largest_research_projects_just_launched_nationally_all_of_us_research_program) to improve health outcomes and personalized wellness outcomes. Financial data can be shared across banks and investment firms to get the best yields for a client-provided strategy.<br>However, for these ecosystems to flourish, we need [**trust**](https://blogs.dxc.technology/2019/08/21/the-importance-of-data-ethics-in-healthcare-it/) mechanisms that validate both the individual’s right to share and the enterprise’s right to consume data. Self-sovereign identity standards such as Decentralized Identifiers (DIDs), verifiable credentials based on zero-knowledge proofs and blockchain-based consent are emerging to address this.<br>Through these technologies and a combination of AI, internet of things and distributed ledger technology, we will see manufacturers, service providers and consumers willing to share data in [**data exchanges**](https://blogs.dxc.technology/2019/11/06/making-the-leap-to-rich-data-sharing-in-healthcare-through-digital-transformation/). The value of these ecosystems will grow with increased consent from individuals to use their personal data, reinforced by the General Data Protection Regulation (GDPR).<br><br>**Key to unlocking business value is peer-to-peer consent management to ensure data compliance, plus AI and analytics to discover new insights.**<br><br>With these components in place, expect ecosystems to grow rapidly, underscoring the importance of data and data-driven insights. CEOs will look to identify and pursue ecosystem-centric business models and trading partners, where trusted and compliant data sharing is fundamental to improving operations and offerings. Line-of-business leaders should understand that key to unlocking business value is peer-to-peer consent management to ensure data compliance, plus AI and analytics to discover new insights. Meanwhile, the technical community will be working to create mechanisms for identity and consent to help govern the use of our personal data and ensure that the value from this data is shared responsibly."
return tt



match (tt:TechnologyTrend {name:'Teams, not superstars, are the high performers'})
set tt.description="Companies are starting to recognize that simply going faster (e.g., holding more meetings) doesn’t unlock the organization’s full potential; companies must create high-performing teams.<br>Successful high-performing teams are empowered to make key decisions. These teams understand their mission and boundaries and are trusted. They communicate and share information across teams, with a record of who participated in the decision process and how. <br><br>**A flexible structure of multidisciplinary teams is adaptable and can provide many options, in contrast to the limited options of a traditional pyramid with siloed teams.**<br><br>Organizing for a dynamic and complex business environment requires talent acquisition and development strategies that rely heavily on interconnected teams of multidimensional individuals, rather than siloed teams of “superstars.” This shift from so-called 10x individuals to 20x teams is paramount for achieving speed, flexibility and business results. The focus is on [**making teams productive**](https://www.dxc.technology/workplace_and_mobility/insights/135966-redefine_your_digital_workplace_as_an_innovation_center); the massive growth of team environments such as Slack and Microsoft Teams underscores the fact that enterprises are eager to harness this productivity. Teammates are double-deep (have both business and technology knowledge), learn from each other daily, discover synergies and optimize in ways that a less intimate model would not allow. People will participate in multiple diverse teams.<br><br>[**Enterprises will restructure**](https://blogs.dxc.technology/2019/10/29/4-tips-for-organizations-to-reap-the-benefits-of-the-gig-economy/) to expand interconnected teams across the whole organization. And ultimately, building better teams will build better individuals and enterprises. The ability to develop and manage a network of high-performing teams will be key to business success in the 2020s."
return tt


---

## Fix the links!

match (tt:TechnologyTrend {name:'Teams, not superstars, are the high performers'})
set tt.reference='https://www.dxc.technology/2020'
return tt

match (tt:TechnologyTrend {name:'The value of data increases in ecosystems'})
set tt.reference='https://www.dxc.technology/2020'
return tt

match (tt:TechnologyTrend {name:'Design thinking shifts from IT services for people to IT services for machines'})
set tt.reference='https://www.dxc.technology/2020'
return tt

match (tt:TechnologyTrend {name:'A new wave of business leaders accelerates business transformation'})
set tt.reference='https://www.dxc.technology/2020'
return tt

match (tt:TechnologyTrend {name:'AI redefines professional services'})
set tt.reference='https://www.dxc.technology/2020'
return tt