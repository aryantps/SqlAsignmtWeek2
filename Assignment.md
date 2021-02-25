[comment]: <> (SqlAsignmtWeek2)

# MS – 203 : SQL Assignment

### Exercise 1 (3 Hours) 


<p>The exercise requires SQL Server AdventureWorks OLTP database which can be found at Codeplex. Download and attach a copy of the
database to your server instance. Take some time to appreciate the entire schema of the database, and functions and stored
procedures (refer AdventureWorks 2008 OLTP Schema.pdf ). Using the AdventureWorks database, perform the following queries.</p>
<ol>

<li>Display the number of records in the [SalesPerson] table. ( _Schema(s) involved: Sales_ ) 
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.1.sql'>Solution</a><br /></li>

<li>Select both the FirstName and LastName of records from the Person table where the FirstName begins with the letter ‘B’.
    ( _Schema(s) involved: Person_ ) 
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.2.sql'>Solution</a><br /></li></li><br />
<li>Select a list of FirstName and LastName for employees where Title is one of Design Engineer, Tool Designer or Marketing
    Assistant. ( _Schema(s) involved: HumanResources, Person_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.3.sql'>Solution</a><br /></li></li><br />
<li>Display the Name and Color of the Product with the maximum weight. ( _Schema(s) involved: Production_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.4.sql'>Solution</a><br /></li></li><br />
<li>Display Description and MaxQty fields from the SpecialOffer table. Some of the MaxQty values are NULL, in this case display
    the value 0.00 instead. ( _Schema(s) involved: Sales_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.5.sql'>Solution</a><br /></li></li><br />
<li>Display the overall Average of the [CurrencyRate].[AverageRate] values for the exchange rate ‘USD’ to ‘GBP’ for the year 2005
    i.e. FromCurrencyCode = ‘USD’ and ToCurrencyCode = ‘GBP’. **Note** : The field [CurrencyRate].[AverageRate] is defined as
    'Average exchange rate for the day.' ( _Schema(s) involved: Sales_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.6.sql'>Solution</a><br /></li></li><br />
<li>Display the FirstName and LastName of records from the Person table where FirstName contains the letters ‘ss’. Display an
    additional column with sequential numbers for each row returned beginning at integer 1. ( _Schema(s) involved: Person_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.7.sql'>Solution</a><br /></li></li><br />
<li>Sales people receive various commission rates that belong to 1 of 4 bands. ( _Schema(s) involved: Sales_ )
  <table>
    <tr>
      <th>CommissionPct</th>
      <th>Commission Band</th>
    </tr>
    <tr>
      <th>0.00</th>
      <th>Band 0</th>
    </tr>
    <tr>
       <th>Up To 1%</th>
       <th>Band 1</th>
    </tr>
    <tr>
       <th>Up To 1.5%</th>
       <th>Band 2</th>
    </tr>
    <tr>
       <th>Graeter 1.5%</th>
       <th>Band 3</th>
    </tr>
  </table>
    

Display the [SalesPersonID] with an additional column entitled ‘Commission Band’ indicating the appropriate band as above.
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.8.sql'>Solution</a><br /></li></li><br />


<li>Display the managerial hierarchy from Ruth Ellerbrock (person type – EM) up to CEO Ken Sanchez. **Hint** : use
    [uspGetEmployeeManagers] ( _Schema(s) involved: [Person], [HumanResources]_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.9.sql'>Solution</a><br /></li></li><br />
<li>Display the ProductId of the product with the largest stock level. **Hint** : Use the Scalar-valued function [dbo]. [UfnGetStock].
    ( _Schema(s) involved: Production_ )
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question1/1.10.sql'>Solution</a><br /></li></li><br />
</ol>

### Exercise 2 (3 Hours)
<p>Write separate queries using a join, a subquery, a CTE, and then an EXISTS to list all AdventureWorks customers who have not placed
an order.
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question.2.sql'>Solution</a><br /></li></p>

### Exercise 3 (2 Hours)

Show the most recent five orders that were purchased from account numbers that have spent more than $70,000 with
AdventureWorks.
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question.3.sql'>Solution</a><br /></li>

### Exercise 4 (2 Hours)

Create a function that takes as inputs a SalesOrderID, a Currency Code, and a date, and returns a table of all the SalesOrderDetail rows
for that Sales Order including Quantity, ProductID, UnitPrice, and the unit price converted to the target currency based on the end of
day rate for the date provided. Exchange rates can be found in the Sales.CurrencyRate table. ( Use AdventureWorks)
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question.4.sql'>Solution</a><br /></li>

### Exercise 5 (2 Hours)

Write a Procedure supplying name information from the Person.Person table and accepting a filter for the first name. Alter the above
Store Procedure to supply Default Values if user does not enter any value.( Use AdventureWorks)
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question.5.sql'>Solution</a><br /></li>

### Exercise 6 (2 Hours)

Write a trigger for the Product table to ensure the list price can never be raised more than 15 Percent in a single change. Modify the
above trigger to execute its check code only if the ListPrice column is updated ( Use AdventureWorks Database ).
<a href='https://github.com/aryantps/SqlAsignmtWeek2/blob/main/question.6.sql'>Solution</a><br /></li>

