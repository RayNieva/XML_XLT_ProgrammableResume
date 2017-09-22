<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- BELOW IS XSL OUTPUT METHOD HTML -->

<xsl:output 
  method="html"
  indent="yes"
  doctype-public="-//W3C//DTD XHTML Basic 1.1//EN"
  doctype-system="http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd"/>



<!--OLD CODE THAT HAS BEEN REWORKED-->
	       	
<xsl:template match="/">
<html>
<head>
 <script>

 <xsl:text>
 function myFunction() {
	document.getElementById("demo").innerHTML = "IT Generalist";
 }

 </xsl:text>
 </script>

 <script>
 <xsl:text>
 function myFunction2() {
    document.getElementById("demo").innerHTML= "IT Professional";
 }
 </xsl:text>
 </script>

<script>
 <xsl:text>
 function myFunction2A() {
    document.getElementById("demo").innerHTML= "Security Administrative Professional";
 }
 </xsl:text>
 </script>


  <script>
    <xsl:text>
function myFunction3() {
    document.getElementById("demo1").innerHTML= "direct";
}
</xsl:text>
  </script>


  <script>
<xsl:text disable-output-escaping="yes">
<![CDATA[
  var skills = ["SQL Server", " SQLite", " MS Access (VBA)", " VB", " VBScript", " Ruby", " Javascript", " Python", " .NET", " HTML5", " CSS3", " XML", " PHP", " MySQL", " Unix/Linux"," Cygwin", " Power Shell" ];
  var text = "";
  var i;
  for (i = 0; i < skills.length; i++) {
     text += skills[i] + ",";
    }
    function mySkills(){
	    document.getElementById("skillslist1").innerHTML = text;

    }
    console.log(text)
]]>
</xsl:text>
</script>


  <script>
    <xsl:text>
function myFunction4() {
    document.getElementById("demo1").innerHTML= "contract";
}
</xsl:text>
  </script>
  

<script>
<xsl:text disable-output-escaping="yes">
<![CDATA[
var skills2 = [" <b>Expertise in:</b>", " Salesforce", " Sharepoint", " Spiceworks", " Git",  " SQL Server Management Studio", " Virtualization", " Crystal Reports", " Microsoft Office (Including MS Access)", " OpenOffice (extending in Basic and Python) Windows", " Linux/Posix", " Visual Studio", " Eclipse", " Emacs", " Vim", " Wordpress"];
var text2 = "";
var i;
for (i = 0; i < skills2.length; i++) {
    text2 += skills2[i] + ",";
//    console.log(text2)
]]>
}


function mySkills2() {
	document.getElementById("skillslist2").innerHTML = text2;
	}
console.log(text2);
</xsl:text>

</script>


<style>

body {
    background-color: Black;
    background-image: url("circuit.")
}


#main {
  max-width: 700px;
  margin: 0 auto; 
  border-style: outset;
  border-width: medium;
  padding-top: 50px;
  padding-right: 50px;
  padding-bottom: 50px;
  padding-left: 80px;
  background-color: White;

  }
  
  a:link {
  text-decoration: none;
  color: black;
  
}
  #myskills {display: block;
            // color: red;
}

</style>

</head>
	


<body>
<div id="main">
	<h1><xsl:apply-templates select="//resume_name/name"/></h1>
	<p><xsl:apply-templates select="//address"/>
        <br />
        <xsl:apply-templates select="//contact_info"/>
        <br />
         <a href="https://linkedin.com/in/raynieva"><xsl:apply-templates select="//linkedIn"/></a>
        <br />
         <!--<a href="https://github.com/raynieva"><xsl:apply-templates select="//github"/></a>--> 
        </p>
        
        
<h2><b id="demo">Position</b>
  seeking <b id="demo1">status</b> opportunity.</h2>

  <!--><button type="button" onclick="myFunction()">IT Generalist</button>-->
  <button type="button" onclick="self.location='ITGeneralist4-Base.xml.html'">IT Generalist</button>
  <!--<button type="button" onclick="myFunction2()">IT Professional</button>-->
  <button type="button" onclick="self.location='ITGeneralist4-Base.xml.html'">IT Professional</button>
  <button type="button" onclick="myFunction2A()">Security Administrative Professional</button>
  <button type="button" onclick="self.location='ITGeneralist4-Base-Sales.xml.html'">Sales Administrative Professional</button>
  <button type="button" onclick="myFunction3()">Direct</button>
  <button type="button" onclick="myFunction4()">Contract</button>

<h3>Summary</h3>
<!--<p><xsl:apply-templates select="//header[@type='primary tech']/subheader[@type='summary']"/></p>-->
  	

<!--<div id="myskills"><p><b>SKILLS: </b>

	<span id="skillslist1"></span><span id="skillslist2"></span>

</p></div>
<button type="button" onclick="mySkills()">Languages</button>
<button type="button" onclick="mySkills2()">Software</button>-->


 <br />
 <b>SECURITY AND ADMINISTRATIVE SKILLS:</b>
 <br />
<!--<p><xsl:apply-templates select="//header[@type='security']"/></p>-->
<ul>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec1']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec2']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec3']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec4']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec5']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec6']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec7']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec8']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec9']"/></li>
<li><xsl:apply-templates select="//header[@type='security']//item[@id='sec10']"/></li>
</ul>
 
   <!--<p>
     <b><xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DESCPAGEFLEX']"/></b>
     <ul>
       <b>Functions:</b>
       <br />
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex1']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex2']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex3']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex4']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex5']"/>
       </li>
       <b>Technology Stack:</b>
       <br />
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex6']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex7']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex9']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex10']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex11']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex12']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='pageflex12']"/>
       </li>
     
     
     
     </ul>

   </p>
 <br />-->
 <!--<b>Currently in Progress (On-going)</b>-->
	<br />
<!--	<a href="https://linkedin.com/in/raynieva"><xsl:apply-templates select="//header[@type='primary tech']//items[@id='RGN1']"/></a>
	<br />
  <p><b><xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DESCDA']"/></b> 
   
        <br />
	<xsl:apply-templates select="//header[@type='primary tech']/items[@id='DA1']"/>
	<br />
     <ul>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA1']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA2']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA3']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA4']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA5']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA6']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DAITEMIZED']/item[@id='DA7']"/>
       </li>
       <li>
         <xsl:apply-templates select="//header[@type='primary tech']//item[@id='DA8']"/>
       </li>
     </ul> 
     
   </p>



   <p><b><xsl:apply-templates select="//header[@type='primary tech']/subheader[@id='DESCGHMNE']"/></b>
	 <br />
        
   <ul>
     <li>
       <xsl:apply-templates select="//header[@type='primary tech']//item[@id='GHMNE2']"/>
     </li>
     <li>
       <xsl:apply-templates select="//header[@type='primary tech']//item[@id='GHMNE3']"/>
     </li>
     <li>
       <xsl:apply-templates select="//header[@type='primary tech']//item[@id='GHMNE4']"/>
     </li>
     <li>
       <xsl:apply-templates select="//header[@type='primary tech']//item[@id='GHMNE5']"/>
     </li>
   </ul>
   </p>-->
  
 <b>PROFESSIONAL EXPERIENCE:</b>
 <p>  
        &#8226;<xsl:apply-templates select="//bus[@id='RGN360i']"/><br />
    
	&#8226;<xsl:apply-templates select="//job[@id='PF370']"/><br />
        
    
      
    
      
     
        &#8226;<xsl:apply-templates select="//job[@id='DA350i']"/><br />

        &#8226;<xsl:apply-templates select="//job[@id='Pallad001']"/><br />

        &#8226; <xsl:apply-templates select="//job[@id='GHME340i']"/><br />
   
        &#8226;<xsl:apply-templates select="//job[@id='Pallad000']"/></p> 

    


<p><b>EDUCATION:</b>
<!--<p><xsl:apply-templates select="//education[@id='1']//item[@id='1']"/></p>-->
<!--<p><xsl:apply-templates select="//education[@id='1']//item[@id='2i']"/></p>-->
<p><xsl:apply-templates select="//education[@id='1']//item[@id='7']"/></p>
<!--<p>GROUPS AND MEMBERSHIPS:</p>
<p><b><xsl:apply-templates select="//tailers/tailer[@organizations='Meetup']"/></b>
<xsl:apply-templates select="//tailers/items[@organizations='Meetup']"/></p>
<p><b><xsl:apply-templates select="//tailers/tailer[@organizations='Linkedin']"/></b>
<xsl:apply-templates select="//tailers/items[@organizations='Linkedin']"/></p>-->

<!--<p>TESTLINE2</p>-->

<!--	<br />
        <b><xsl:apply-templates select="//education1/schoolsAndTraining/item1/name"/></b>&#160;
<xsl:apply-templates select="//education1/schoolsAndTraining/item1/location"/>


<xsl:apply-templates select="//education1/schoolsAndTraining/item1/description"/>
<br />
        <b><xsl:apply-templates select="//education1/schoolsAndTraining/item2/name"/></b>&#160;
        <xsl:apply-templates select="//education1/schoolsAndTraining/item2/description1"/> -->
       <!-- (Reference Links for : https://www.linkedin.com/in/raynieva and https://github/raynieva)-->
  
         
<!--<br />
        <b><xsl:apply-templates select="//education1/schoolsAndTraining/item8/name"/></b>&#160;
        <xsl:apply-templates select="//education1/schoolsAndTraining/item8/location"/>&#160;
        <xsl:apply-templates select="//education1/schoolsAndTraining/item8/description"/>-->
        
<br />

</p>
</div>
</body>
</html>	
 
</xsl:template>	
			
	
	
</xsl:stylesheet>
