# Solution validations





|Backend validation| |
|---|---|
Name|isEmpty, isTrimmed
Description|`basicStringIssues`, length > 0 , description longer than name
ElevatorPitch|`basicStringIssues`, elevatorPitch shorter than description
GeneralValue|`basicStringIssues`
Referencable|isEmpty, beyondDomain
Status|isEmpty, beyondDomain
Motivations|for each motivation -> `basicStringIssues`, description longer than name
Attachments|size > 0, `basicStringIssues`, address pointing to localhost, isEmpty, beyondDomain, isPresent
Features|size > 0, for each Feature -> `basicStringIssues`, description longer than name, isEmpty, beyondDomain
ConfigurationPlans|size = 0 when features size > 0, for each -> `basicStringIssues`
Industries|size > 0, for each beyondDomain
Accounts|for each Account -> `basicStringIssues`, potentialDuplicate
Tags|isEmpty, isTrimmed, potentialDuplicate, failsRegexp
Contacts|size > 0, for each contact -> `basicStringIssues` of name & email, potentialDuplicate x2, regexp, role -> isEmpty and beyondDomain
SolutionTypeNotDeleted|check if solution type is valid



### BasicStringIssues
- isEmpty
- isTrimmed
- containsFormatting `"\n"`
- containsHTMLFormatting  `"<(B|P|DIV|I|U|LI|UL|OL|DL|IMG|A)( [^>]+)?/?>"`
