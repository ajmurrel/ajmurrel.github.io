<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="cookbooks">
        <html>
            <style>
                h1 {
                font-family: "Monaco", monospace;
                color: #d2691e
                }
                h2 {
                font-family: "Lucida Console", monospace;
                text-align: center;
                }
                h3 {
                font-family: "Lucida Console", monospace;
                font-variant: small-caps;
                }
                body {
                margin: 0;
                font-family: "Courier New", monospace;
                line-height: normal;
                }
                table { 
                font-family: monospace; 
                border-collapse: collapse; width: 100%; 
                } 
                td, th { 
                border: 1px solid #dddddd; 
                text-align: left; 
                padding: 8px; 
                } 
                tr:nth-child(even) { 
                background-color: #ffdab9; 
                }
            </style>
            <head>
                <title>What are Americans Eating?</title>
                <link rel="stylesheet" type="text/css" href="https://ajmurrel.github.io/css/main.css"/>
            </head>
            
            <body>
                <h1>What are Americans Eating?</h1>
                
                <h3><i>Examining American Cuisine through Recipe Ingredients</i></h3>
                
                    <p>This project explores the foods that make up American cuisine by transforming data from nearly 70 encoded cookbooks held by the Michigan State University Libraries Stephen O. Murray and Keelung Hong Special Collections. The cookbooks were encoded as a part of the <a href="https://www.lib.msu.edu/feedingamericadata/"><i>Feeding America: The Historic American Cookbook</i></a> dataset project. The texts were selected among more than 7000 cookbooks that MSU Libraries holds as representative of periods and themes in American cookbook history spanning the late 18th to early 20th century.</p>
                
                    <p>My transformation sought to extract specific ingredients mentioned in the cookbooks, with the intention of examining what ingredients were most common in American recipes during this period. When deciding what ingredients to extract, I researched the most consumed fruits, vegetables, dairy products, meats, and grains in the American diet today. By comparing the ingredients prevalent in these 18th, 19th, and 20th century cookbooks to prominent modern ingredients, we can see how food usage and American cuisine have evolved over time.</p>
                
                <img src="https://ajmurrel.github.io/homework/cookbook.jpg" alt="Cookbook with lettuce; photo by S O C I A L . C U T on Unsplash" width="896" height="582"/>
                
                <h2>Encoded Cookbooks</h2>
                <xsl:apply-templates/> 
                
                <h2>Ingredient Usage</h2>
                <p>The following tables depict the number of instances an ingredient was mentioned in each cookbook and assigned an ingredient element tag. It does not account for instances in which the ingredient was mentioned without the ingredient element tag, such as in the index or table of contents. Each table row corresponds to a cookbook, with the first row of numbers in any table belonging to cookbook ID number 1803frca. The remaining rows of data are ordered identically to the cookbooks listed in the previous section. Before each table, there is a list that depicts each table ingredient along with the total number of times the ingredient was mentioned in this collection of recipe books. Ingredients are ordered from the most frequently included to the least frequently included. An Excel file with this data and each row's corresponding item ID number can be found <a href="http://ajmurrel.github.io/homework/cookbook-table-data.xlsx">here.</a> This file also includes the total number of times an ingredient was mentioned in the collection of cookbooks.</p>
                
                <h3>Fruits</h3>
                <ol type="1">
                    <li>Lemons - 10,452 instances</li>
                    <li>Apples - 4,560 instances</li>
                    <li>Oranges - 2,974 instances</li>
                    <li>Peaches - 1,547 instances</li>
                    <li>Strawberries - 856 instances</li>
                    <li>Grapes - 689 instances</li>
                    <li>Bananas - 279 instances</li>
                    <li>Watermelon - 34 instances</li>
                    <li>Blueberries - 28 instances</li>
                    <li>Avocados - 1 instance</li>
                </ol>
                <table>   
                <tr>  
                     <th>Bananas</th>                         
                    <th>Apples</th>                         
                    <th>Strawberries</th>                         
                    <th>Grapes</th>                         
                    <th>Oranges</th>                        
                    <th>Watermelon</th>                         
                    <th>Lemons</th>                         
                    <th>Avocados</th>                         
                    <th>Peaches</th>                         
                    <th>Blueberriers</th>                     
                </tr>  
                    <xsl:apply-templates select="cookbook/fruits"/>
                </table>  
                
                <h3>Vegetables</h3>
                <ol type="1">
                    <li>Onions - 8,199 instances</li>
                    <li>Potatoes - 4,505 instances</li>
                    <li>Tomatoes - 3,714 instances</li>
                    <li>Corn - 3,032 instances</li>
                    <li>Celery - 2,595 instances</li>
                    <li>Carrots - 2,180 instances</li>
                    <li>Lettuce - 1,135 instances</li>
                    <li>Cucumbers - 915 instances</li>
                    <li>Broccoli - 16 instances</li>
                </ol>
                <table>                     
                    <tr>                         
                         <th>Onions</th>                         
                        <th>Celery</th>                         
                        <th>Carrots</th>                         
                        <th>Corn</th>                         
                        <th>Potatoes</th>                        
                        <th>Tomatoes</th>                         
                        <th>Lettuce</th>                         
                        <th>Broccoli</th>                         
                        <th>Cucumbers</th>                         
                    </tr>  
                    <xsl:apply-templates select="cookbook/vegetables"/>
                </table>  
                
                <h3>Dairy</h3>
                <ol type="1">
                    <li>Butter - 27,321 instances</li>
                    <li>Milk - 14,919 instances</li>
                    <li>Cheese - 1,861 instances</li>
                    <li>Ice Cream - 45 instances</li>
                    <li>Yogurt - 0 instances</li>
                </ol>
                <table>                     
                    <tr>                         
                         <th>Butter</th>                         
                        <th>Milk</th>                         
                        <th>Yogurt</th>                         
                        <th>Cheese</th>                         
                        <th>Ice Cream</th>                        
                    </tr>  
                    <xsl:apply-templates select="cookbook/dairy"/>
                </table>  
                
                <h3>Meats and Other Protein Sources</h3>
                <ol type="1">
                    <li>Eggs - 25,889 instances</li>
                    <li>Fish - 4,869 instances</li>
                    <li>Chicken - 4,164 instances</li>
                    <li>Beef - 3,955 instances</li>
                    <li>Pork - 2,605 instances</li>
                    <li>Veal - 2,446 instances</li>
                    <li>Beans - 1,839 instances</li>
                    <li>Turkey - 836 instances</li>
                    <li>Venison - 266 instances</li>
                </ol>
                <table>                     
                    <tr>                         
                         <th>Beef</th>                         
                        <th>Chicken</th>                         
                        <th>Turkey</th>                         
                        <th>Pork</th>                         
                        <th>Venison</th>                        
                        <th>Veal</th>                         
                        <th>Fish</th>                         
                        <th>Eggs</th>                         
                        <th>Beans</th>                         
                    </tr>  
                    <xsl:apply-templates select="cookbook/meats"/>
                </table>  
                
                <h3>Grains</h3>
                <ol type="1">
                    <li>Flour - 18,146 instances</li>
                    <li>Bread - 8,733 instances</li>
                    <li>Rice - 3,246 instances</li>
                    <li>Pasta - 832 instances</li>
                    <li>Oats - 639 instances</li>
                    <li>Barley - 358 instances</li>
                </ol>
                <table>                     
                    <tr>                         
                         <th>Rice</th>                         
                        <th>Pasta</th>                         
                        <th>Oats</th>                         
                        <th>Bread</th>                         
                        <th>Barley</th>                        
                        <th>Flour</th>                         
                    </tr>  
                    <xsl:apply-templates select="cookbook/grains"/>
                </table>  
            </body>
        </html>
    </xsl:template> 
   
    <xsl:template match="cookbooks/cookbook">
        <h3>
            <xsl:apply-templates select="title"/>
        </h3>
        <p>
            <xsl:text>ID Number: </xsl:text>
            <xsl:apply-templates select="idno"/>
        </p>
        <p>
            <xsl:text>Author: </xsl:text>
            <xsl:apply-templates select="author"/>
        </p>
        <p>
            <xsl:text>Publisher: </xsl:text>
            <xsl:apply-templates select="publisher"/>
        </p>
        <p>
            <xsl:text>Date: </xsl:text>
            <xsl:apply-templates select="yearPublished"/>
        </p>
        <p>
            <xsl:text>Coverage: </xsl:text>
            <xsl:apply-templates select="coverage"/>
        </p>
    
    </xsl:template>    
    <xsl:template match="fruits">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="banana">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="apple">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="strawberry">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="grape">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="orange">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="watermelon">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="lemon">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="avocado">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="peach">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="blueberry">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="vegetables">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="onion">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="celery">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="carrot">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="corn">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="potato">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="tomato">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="lettuce">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="broccoli">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="cucumber">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="dairy">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="butter">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="milk">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="yogurt">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="cheese">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="iceCream">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="meats">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="beef">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="chicken">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="turkey">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="pork">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="venison">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template><xsl:template match="veal">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="fish">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="egg">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="bean">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="grains">
        <tr>
            <xsl:apply-templates/>
        </tr>
    </xsl:template>
    <xsl:template match="rice">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="pasta">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="oats">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="bread">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="barley">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
    <xsl:template match="flour">
        <td>
            <xsl:apply-templates/>
        </td>
    </xsl:template>
</xsl:stylesheet>
