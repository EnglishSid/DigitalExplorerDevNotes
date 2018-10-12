# Employee directory lookup and services.

The DE platforms leverages the DXCDDSS service from HR

|Environment	|Component	|URL/Link|
|---|---|---|
|DXC DD Production |Self-Subscription|https://dxcddss-prd.itcs.houston.dxccorp.net/
|DXC DD Integration|Self-Subscription|https://dxcddss-itg.itcs.houston.dxccorp.net/

---

See the associated user guides for setup details.

---

##  DE integration

the following fields are included within the extract

- employee id
- employee name
- employee email
- employee managers email

1. approved weekly extract from DXCDDSS to DEV,ITG and PROD
2. data is merged into DE Graph dataset
    - key value is the employee id
    - validates changes to name, email and managers email
    - removes person node if no longer returned within the dataset

### Solution Validation

- Dedicated admin report to list all solutions with no assigned contacts
    - option to edit or hide from search
