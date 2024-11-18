<html>
<head>
   <style type="text/css">
	.footer{
    page-break-after:always;
    }
	table.center {font-family: Arial Unicode MS, sans-serif;
    margin: 0px 30px 10px;
    
    }
	p.format{
     margin: 0px 30px 10px;

	}
	ul.format{
     margin: 0px 35px 10px;
	}
</style>
</head>
<body>
<p style="font-size: 20pt; text-align: center;">Customer 1 Bundle</p>
<div style="margin: 0px 35px 0px;">
<ul>
<li>Cover Letter<span style="font-size: 8pt;"><#if A><#if LLC_BI__Loan__c.AIB_PFPCompleted__c == "YES"></span></li>
<li>Suitability Statement<span style="font-size: 8pt;"></#if></span></li>
<li>Letter of Sanction<span style="font-size: 8pt;"><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "True"></span></li>
<li>Direct Debit Mandate<span style="font-size: 8pt;"></#if></span><span style="font-size: 8pt;"><#if A AND B> {{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></li>
<li>Drawdown Instruction<span style="font-size: 8pt;"></#if></span><span style="font-size: 8pt; background-color: #eccafa;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="FALSE"}}{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="True"}} </span></li>
<!--SME1-10475-->
<li>Drawdown Instruction<span style="font-size: 8pt;"></#if></#if><#list LLC_BI__Legal_Entities__c as item><#if (1 OR 2) AND 3>{{COND="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{COND="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{COND="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</span></li>
<li>Data Protection Notice<span style="font-size: 8pt;"></#if></#list></span></li>
</ul>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><br /><div class="mce-pagebreak"></div></p>
<table style="width: 101.664%; font-family: Helvetica; 41px; margin: 25px; margin-top: -20px; padding: 0px;">
<tbody>
<tr>
<th style="width: 38%; height: 41px; font-size: 9pt; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-weight: bold;">Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}<br /><br /><br /></span></th>
<th style="width: 46.3935%; height: 41px; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-size: 20pt; text-align: left;">Your Loan<br /><br /></span></th>
<th style="width: 20.8802%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688147453000/AIB_Logo" width="80" height="80" /></strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 5.6641%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 9pt; font-family: Helvetica; vertical-align: top; margin-top: -40px; margin: 25px; padding: 0;">
<tbody>
<tr>
<td style="width: 39.5553%; border-style: hidden;">
<p style="font-family: Arial Unicode MS, sans-serif; margin: 0; padding: 0;"><span style="font-family: 'Arial Unicode MS Bold', sans-serif; font-weight: bold; margin: 0; padding: 0;"><strong>Private and Confidential</strong></span><br />{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{LIST="LLC_BI__Legal_Entities__c" FILTER="A" LIMIT="1"}}{{FILTER="A"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</p>
<p style="font-family: Arial Unicode MS, sans-serif; margin: 0; padding: 0;"><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress1__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress2__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress2__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress3__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress3__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress4__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress4__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress5__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress5__c}<br /></#if></#list>{{ELSEIFLIST}}{{LIST="LLC_BI__Legal_Entities__c" FILTER="B" LIMIT="1"}}{{FILTER="B"FIELD="LLC_BI__Legal_Entities__c.AIB_PrioritySigner__c"IS="TRUE"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</p>
<p style="font-family: Arial Unicode MS, sans-serif; margin: 0; padding: 0;"><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress1__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress2__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress2__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress3__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress3__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress4__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress4__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress5__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress5__c}<br /></#if></#list></#if></p>
</td>
<td style="width: 27.8492%; border-style: hidden;"> </td>
<td style="width: 129.104%; border-style: hidden;">
<p style="font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 5pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" LIMIT="1"}}{{FILTER="A"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}</span>${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}.<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}<span style="font-size: 6.66667px;"></#list></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-family: font-family: Arial Unicode MS, sans-serif;">Date: ${LLC_BI__Loan__c.AIB_CurrentDate__c}</span></p>
<table style="border-collapse: collapse; width: 98.9578%; border-style: hidden; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 61.1842%; border-style: none;">
<table class="center" style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; width: 99.8548%; border-style: hidden;" border="0" cellspacing="0" cellpadding="0" align="left">
<tbody>
<tr style="break-inside: avoid;">
<td style="width: 100%; border-style: none; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;" valign="top">
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Dear Customer,</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Following your recent application for credit, I am pleased to enclose your Finance Documents for this application.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Please read the documents in the pack carefully and if you have any questions, feel free to call us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">As this is a legal contract, we recommend that you seek independent legal advice.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">If you’d like to go ahead with this facility, please follow the instructions below:</p>
<ul>
<li>Sign and date the Letter of Sanction on the last page at the ‘Sign Here’ arrow.<span style="font-size: 8pt;"><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "True"></span></li>
<li>Complete and sign the SEPA Direct Debit Mandate at the ‘Sign Here’ arrow.</#if></li>
<li>Check the Conditions Precedent Section of the Letter of Sanction for anything else that you might need to do.</li>
<li>Return the signed and dated documents to us.</li>
</ul>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Thank you for choosing to bank with us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Yours sincerely,</p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Arial Unicode MS', sans-serif;"> </p>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_Signature_PaperJourney" alt="" width="147" height="29" /></p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Maria Hynes</span></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Head of Fulfilment CoE</span></em></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="text-align: justify; margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><strong><span style="font-size: 9pt; font-family: Helvetica, sans-serif;">For and on behalf of Allied Irish Banks, p.l.c.</span></strong></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style="width: 2.77104%; border-style: hidden;"> </td>
<td style="width: 43.5024%; border-style: hidden; vertical-align: top; padding-top: 50px;">
<table style="border-collapse: collapse; width: 100.319%; background-color: #d0cece; font-family: Helvetica;" border="1">
<tbody>
<tr>
<td style="background-color: #e6e6e6; border-style: hidden; font-family: Helvetica, sans-serif; width: 100%; margin: 0px 0px 0px;"><span style="font-size: 20pt; font-family: Helvetica, sans-serif; color: #993366;">What’s in the pack?</span></td>
</tr>
<tr>
<td style="width: 100%; background-color: #efefef; border-style: hidden; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_PFPCompleted__c"IS="YES"}}</span>Statement of Suitability</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the reasons why we consider this facility suitable for you.</#if></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">Letter of Sanction</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the details of your facility including our obligations to you and yours to us. We have included two copies of your Letter of Sanction. One for you to sign and send back to us. The other for you to keep for your records.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">General Terms &amp; Conditions governing Business Lending</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out further terms and conditions that will apply to your facility.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;"><span style="font-size: 8pt;"><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "True"></span> </span>SEPA Direct Debit Mandate</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This allows us to collect the loan repayments from the account you asked us to use.</#if></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{ELSEIFLIST}}Data Protection Notice </span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;">This sets out how we will use and store your information at AIB.</#if></span></span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"> </p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -60px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif; text-align: justify;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></p>
<p style="font-family: Helvetica, sans-serif; font-size: 12pt; text-align: left;"><span style="font-size: 8pt;"><#if A><#if LLC_BI__Loan__c.AIB_PFPCompleted__c == "YES"></span></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 14px; font-size: 9pt; border-style: none; font-family: Helvetica; text-align: left;">
<p style="font-weight: bold;"><span style="font-family: Helvetica, sans-serif; font-weight: bold;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</span></p>
<p style="font-size: 24pt; font-family: Helvetica; font-weight: normal; text-align: center;"><span style="font-family: Helvetica, sans-serif;"><span style="font-size: 14pt;"><strong>                          Statement of Suitability</strong> </span></span></p>
</th>
<th style="width: 9.59025%; font-size: 9pt; height: 14px; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat.sandbox.file.force.com/servlet/servlet.ImageServer?id=0151l000000B1HO&amp;oid=00D1l0000000l1h&amp;lastMod=1577461054000" width="112" height="112" /></strong></th>
<th style="width: 4.79512%; font-size: 9pt; border-style: none; text-align: left; height: 14px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left; height: 14px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left; height: 14px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="border-collapse: collapse; border: 2px solid #000000; 71px; width: 101.258%;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%; font-size: 10pt; font-family: Helvetica, sans-serif; text-align: left;"><strong>                                                         Important Notice – Statement of Suitability<br />This is an important document which sets out the reasons why the product offered or recommended is considered suitable, or the most suitable, for your particular needs, objectives and circumstances.<br /></strong></td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: left;">Date: ${LLC_BI__Loan__c.AIB_CurrentDate__c}</p>
<table class="center" style="border-collapse: collapse; border-color: #000000; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; width: 81.9853%;">
<tbody>
<tr>
<td style="width: 3.49014%; border-style: hidden; vertical-align: top;">
<p style="text-align: left; margin: 0px;">To:</p>
</td>
<td style="width: 96.5099%; border-style: hidden;">
<table style="font-size: 10pt; width: 99.4872%;" border="1">
<tbody>
<tr>
<td style="width: 99.055%; border-style: hidden;">
<p style="text-align: left; margin: 0px;"><span style="font-size: 10pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{LIST="LLC_BI__Legal_Entities__c"  ORDER="AIB_Sequence__c ASC"}}{{FILTER="A"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}, ${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}${LLC_BI__Legal_Entities__c.AIB_LastDocumentSignerText__c}</span><br /><span style="font-size: 10pt;"></#list></#if>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5 OR 6) AND 7"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="7" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}, ${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /></#list></#if></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; margin-bottom: 0px; text-align: justify;">In accordance with our obligations under the Consumer Protection Code, we wish to inform you that the following product is suitable, based upon information you have provided regarding:</p>
<ul class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; margin-bottom: 0px; text-align: justify;">
<li>your credit need</li>
<li>the purpose of your borrowing</li>
<li>your financial situation</li>
</ul>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify;">and our subsequent detailed credit assessment.</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: left;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Loan</strong></span><br />A Business Loan from AIB offers funding tailored to suit your business. </p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; margin-bottom: 0px; text-align: justify;">This product is suitable because;</p>
<ul class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify;">
<li>You are seeking a lending product for the following purpose: <#list AIB_Quote__c as item><!-- FILTER: A FIELD: AIB_IsActive__c IS: TRUE -->${AIB_Quote__c.AIB_PurposeName__c}</li>
<li>You are seeking a total amount of EUR ${AIB_Quote__c.AIB_Amount__c}</#list>{{IFLIST="AIB_Quote__c" <span style="font-size: 10pt;"><span style="color: #2dc26b;"><span style="color: #000000;">FILTER="1 AND 2"</span></span></span>}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_Facility__r.AIB_IsPurposeRestructure__c"IS="true"}}{{FILTER="2"FIELD="AIB_Quote__c.AIB_RepaymentStructure__c"IS="Interest Only followed by Bullet (C&amp;I)"}}</li>
<li>Repayment of the debt has been structured in a manner that is more affordable given your current circumstances{{ELSEIFLIST}}   </li>
<li>You are likely to be able to repay the debt in the manner required under the letter of sanction</#if></li>
<li>It is available for the term you require</#if></li>
</ul>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify;">The key features and restrictions of the product have been supplied and explained to you as part of the sales engagement. However, if you would like any further information, please contact your local AIB branch and we will be happy to assist you.</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; text-align: left;"><strong>For and on behalf of Allied Irish Banks, p.l.c.</strong></p>
<p>{{LIST="LLC_BI__Legal_Entities__c" FILTER="2" ORDER="LLC_BI__Legal_Entities__c.AIB_Sequence__c DESC" LIMIT="1"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}<#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c" GREATER="9"}}<div class="mce-pagebreak"></div>{{ELSE}}</p>
<div class="footer" style="margin-top: -35px; page-break-before: always;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p></#if></#list></p>
<p class="format" style="font-size: 9pt; font-family: Helvetica, sans-serif; text-align: left;"> </p>
<p> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div><span style="font-family: Helvetica, sans-serif; font-size: 7pt;"></#if></span></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 41px; font-size: 9pt; border-style: none; font-family: Helvetica; text-align: left;">
<p><span style="font-family: Helvetica, sans-serif; font-weight: bold;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</span></p>
<p style="font-size: 24pt; font-family: Helvetica; font-weight: normal; text-align: center;"><strong><span style="font-family: Helvetica, sans-serif; font-size: 14pt;">                          Letter of Sanction</span></strong></p>
</th>
<th style="width: 9.59025%; font-size: 9pt; height: 41px; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat.sandbox.file.force.com/servlet/servlet.ImageServer?id=0151l000000B1HO&amp;oid=00D1l0000000l1h&amp;lastMod=1577461054000" width="112" height="112" /></strong></th>
<th style="width: 4.79512%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: Arial, sans-serif; text-align: left; margin: 0px 0px 0px;"> </p>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 9pt; font-family: Helvetica; vertical-align: top;">
<tbody>
<tr>
<td style="width: 59.6992%; border-style: hidden;">
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span>"IS="Partnership"}}</span></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 10pt;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_LetterofOfferSigner__c</span>"IS="True"}}</span></span> <span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_Sequence__c</span>"IS="1"}}</span></span> </span></span><br /><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}}<span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span></span><span style="font-size: 10pt; line-height: normal;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span><br /><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span></p>
</td>
<td style="width: 7.70533%; border-style: hidden;">
<p> </p>
</td>
<td style="width: 129.104%; border-style: hidden; vertical-align: top;">
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" LIMIT="1"}}{{FILTER="A"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}</span>${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}.<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}<span style="font-size: 6.66667px;"></#list></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; font-family: Arial, sans-serif;"><span style="font-size: 10pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</span></span><strong>FAO:</strong> The Secretary</#if></span></p>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 10pt; font-family: Helvetica; vertical-align: top;">
<tbody>
<tr>
<td style="width: 39.5553%; border-style: hidden; margin: 0cm;">
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Private &amp; Confidential</strong></span></p>
</td>
<td style="width: 27.8492%; border-style: hidden;">
<p> </p>
</td>
<td style="width: 129.104%; border-style: hidden;">
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"> ${LLC_BI__Loan__c.AIB_CurrentDate__c} </span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border: 2px solid #000000; 71px; width: 90.707%; margin-left: 30px;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%; font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify;"><strong>Warning: If you do not meet the repayments on your credit facility agreement, your account will go into arrears.  This may affect your credit rating, which may limit your ability to access credit in the future. </strong></td>
</tr>
</tbody>
</table>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: left;">Dear <span style="color: #e03e2d;"><span style="color: #000000;">Customer,</span></span><br /><br /><span style="color: #000000;">Allied Irish Banks, p.l.c. has agreed to offer the facility listed below (the <strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">“Facility”</span></strong>) to you:</span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}} <span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span><span style="font-size: 9pt; line-height: normal;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}, </span><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span>"IS="Partnership"}}</span></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 10pt;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_LetterofOfferSigner__c</span>"IS="True"}}</span></span> <span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}, </span><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<span style="color: #000000;">${LLC_BI__Legal_Entities__c.AIB_LastDocumentSignerText__c}</span> </span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"> </p>
<div>
<div style="text-align: left;"><span style="font-size: 10pt;"><!--SME1-9078 IMPACT-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}<!-- FILTER: 2 FIELD: LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c IS: Borrower -->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="2"}}{{FILTER="2" FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}(together, the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}).</#list>{{ELSEIFLIST}}).</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>")</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}).</#list>{{ELSEIFLIST}}).</#if></#if></span></div>
</div>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">The Facility is subject to the terms and conditions set out in this document (including any schedules) (the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">Letter of Sanction</span>”) and our General Terms and Conditions governing Business Lending (the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">General Terms and Conditions</span>”).  We have enclosed a current copy of the General Terms and Conditions with this Letter of Sanction.  This Letter of Sanction and the General Terms and Conditions are collectively referred to as the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">Finance Documents</span>”. </p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">Please read the Finance Documents carefully and, if you have any questions, contact us.  You have the right to seek independent legal and financial advice in relation to the Finance Documents and we strongly recommend that you do so before you sign it. You also have the right to be supplied with a copy of the Finance Documents at any time.</p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">If there is any inconsistency between the provisions of this Letter of Sanction and the General Terms and Conditions, then the terms of this Letter of Sanction will prevail to the extent of any conflict.  Capitalised terms used that are not otherwise defined in this Letter of Sanction shall, unless the context requires otherwise, have the meanings set out in the General Terms and Conditions.</p>
<p><div class="mce-pagebreak"></div></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 5pt; font-family: Helvetica, sans-serif;"><#if (A OR B)><#if LLC_BI__Loan__c.AIB_ProductCode__c == "54103"><#if LLC_BI__Loan__c.AIB_ProductCode__c == "54104"></span>               <strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">The Facility</span></strong></p>
<table class="Center" style="margin-left: 40.85pt; border-collapse: collapse; border: none; width: 83.9461%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 17.3%; border: 1pt solid; background: #e6e6e6; padding: 0cm 5.4pt;" valign="top">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">The Facility:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; background: #e6e6e6; padding: 0cm 5.4pt;" valign="top">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif; color: black;">Term Loan</span></strong></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: left;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Quote Reference:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;"><span style="font-size: 10pt; line-height: 120%; font-family: 'Arial Unicode MS', sans-serif; color: black;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span>${AIB_Quote__c.Name}</#list></span></p>
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">This reference number is for internal bank purposes.</span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Indicative Information  and  Calculation Details:</span></strong></p>
</td>
<td style="width: 82.7%; border-image: initial; border-right: 1pt solid; border-bottom: 1pt solid; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">Please note that any amounts, number of repayment instalments, dates and interest rates shown in this Facility table and the attached Repayment Schedule are indicative only and we will send you a Drawdown Letter after your Facility is drawn down with details of: (i) the actual interest rate; (ii) the actual repayment amounts and number of repayment instalments; (iii) the actual repayment dates; (iv) the total amount repayable; (v) the Cost of Credit; and (vi) the APR, that will apply to this Facility.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">The figures in this table and the Repayment Schedule are correct as at <span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}${LLC_BI__Loan__c.AIB_CurrentDate__c}</span> and are calculated using an indicative drawdown date of <span style="background-color: #ffffff;">${LLC_BI__Loan__c.AIB_CurrentDate__c}  </span>and an indicative first repayment date of ${AIB_Quote__c.AIB_FirstRepaymentDate__c}<span style="font-size: 10pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">.</#list> </span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">This indicative first repayment date is based on your preferred repayment date as advised as part of your application. We require a minimum period between drawdown and first repayment date so when you return your signed Letter of Sanction, we may need to amend your first repayment date to the next appropriate date based on your preferred repayment date and frequency. This will be advised to you in the Drawdown Letter you will be sent after your Facility is drawn down.</p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Maximum Amount:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">€${LLC_BI__Loan__c.LLC_BI__Amount__c}</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Arial Unicode MS, sans-serif; text-align: left;"> </p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Purpose:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"> {{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}${AIB_Quote__c.AIB_PurposeName__c}</#list></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Interest Rate:</span></strong></p>
</td>
<td style="width: 82.7%; border: 1pt solid #000000; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong> As at ${LLC_BI__Loan__c.AIB_CurrentDate__c}, the interest rate is ${AIB_Quote__c.AIB_AIR__c}% per year. This is our Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate<#if A OR B><#if AIB_Quote__c.AIB_MarginAdjustment__c == "Plus"><#if AIB_Quote__c.AIB_MarginAdjustment__c == "Minus">, ${AIB_Quote__c.AIB_MarginAdjustment__c} ${AIB_Quote__c.AIB_Margin__c}% per year.{{ELSE}}.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">The interest rate outlined above is indicative and based on the prevailing Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate on the indicative drawdown date outlined above.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">We may change the prevailing Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate from time to time. When your Facility is drawn down, the prevailing Business ${AIB_Quote__c.AIB_RateType__c}</#list> Loan Rate on that date will be applied to your account (which might be different to the interest rate set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"IS="EDNull"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="2"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c" IS="Fixed"}}</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">This rate will not change for the term of your loan.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.</#if></#if>{{IFLIST="AIB_Quote__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"IS="EDNull"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="2"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong><#if B>{{COND="B"FIELD="LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c" IS="Variable"}}</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">Our Business Variable Loan Rate is variable and may change throughout the period of this Letter of Sanction. There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.<br /><span style="font-family: Arial, sans-serif; font-size: 13.3333px;"></#if></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"NOT="EDNull"}}{{LIST="AIB_Quote__c" FILTER="1" LIMIT="1"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong> </span><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">Our Business Variable Loan Rate is variable and may change throughout the period of this Letter of Sanction. We are changing our Business Variable Loan Rate on ${AIB_Quote__c.AIB_Effective_Date__c}. From that date an interest rate of ${AIB_Quote__c.AIB_Effective_Rate__c}%  will apply to your Facility. There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;"></#list></#if></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Basis of Calculation:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; font-family: Arial Unicode MS, sans-serif;">Interest on the Facility is calculated on a daily basis using the 360 day count convention. This means that interest on the Facility is calculated daily on the relevant balance applying the relevant interest rate divided by 360.</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">If there is any inconsistency or contradiction between the provisions of this Letter of Sanction and the General Terms and Conditions regarding the calculation of interest on the Facility, then the terms of this Letter of Sanction will prevail to the extent of any conflict. <br /></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Repayment:</span></strong></p>
</td>
<td style="width: 82.7%; padding: 0cm 5.4pt; border: 1pt solid #000000; vertical-align: top;">
<div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="(1 OR 2) AND 3"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Annuity (C&amp;I) --><!-- FILTER: 2 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Deferred followed by Annuity (C&amp;I) -->{{FILTER="3"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{IFLIST="AIB_Quote__c" FILTER="(1 OR 2) AND 3"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDNull --><!-- FILTER: 2 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDlessFRD -->{{FILTER="3"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_RepaymentStructure__c" FILTER = "A"}}<!-- FILTER: A FIELD: AIB_RepaymentStructure__c.AIB_RepaymentType__c IS: C&amp;I -->This Facility is repayable by you making ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list></#list></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDgreaterorequalFRD -->{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_RepaymentStructure__c" FILTER = "A"}}<!-- FILTER: A FIELD: AIB_RepaymentStructure__c.AIB_RepaymentType__c IS: C&amp;I -->This Facility is repayable by you making one repayment of €${AIB_RepaymentStructure__c.AIB_FirstRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_FirstRepaymentStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion);</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">${AIB_RepaymentStructure__c.AIB_NumberOfRepaymentRateChange__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of € ${AIB_RepaymentStructure__c.AIB_RemainingRepaymentsAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_RemainingRepaymentsStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list></#list></#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="C"}}<!-- FILTER: C FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable -->Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Interest Only followed by Annuity (C&amp;I) --></span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}} </span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#list AIB_RepaymentStructure__c as item></span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#if A><#if AIB_RepaymentStructure__c.AIB_RepaymentType__c == "Interest Only"></span><span style="font-size: 10pt;">This Facility is repayable by you making the following repayments:</span></p>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">a) ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments to pay the interest accrued on this Facility commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c};</#if><#if B> <#if AIB_RepaymentStructure__c.AIB_RepaymentType__c == "C&amp;I">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">b) ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_FirstRepaymentStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion).</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#list></#list></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule.</p>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<span style="font-size: 10pt;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Interest Only followed by Bullet (C&amp;I) -->{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}<#list AIB_RepaymentStructure__c as item>This Facility is repayable by you making the following repayments:</span></p>
</div>
</div>
<div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">(a) ${AIB_RepaymentStructure__c.AIB_UpdatedNoRepaymentsIOBullet__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments to pay the interest accrued on this Facility commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c};</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">(b) a final repayment equal to all amounts that remain outstanding in respect of this Facility (including interest accrued that has not already been paid) on ${AIB_Quote__c.AIB_ExpiryDate__c}. We have estimated that the amount of this final repayment will be €${AIB_RepaymentStructure__c.AIB_OPMaxRepaymentAmount__c}.</#list> </#list></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobePaidbyEFTRepayments__c"IS="false"}}Please note that all repayments including the final repayment will be paid by direct debit, and we will give you notice prior to your final repayment date to confirm the final repayment date and the final repayment amount.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if><span style="font-size: 10pt;">{{IFLIST="AIB_Quote__c" FILTER="1"}}</span><span style="font-size: 10pt;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Seasonal --></span><span style="font-size: 10pt;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span><span style="font-size: 10pt;"><#list AIB_RepaymentStructure__c as item></span><span style="font-size: 10pt;">This Facility is repayable by you making ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal) in the month(s) of ${AIB_RepaymentStructure__c.AIB_IPSeasonalMonthsName__c} when they fall due, commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list> </#list></span></p>
</div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule. </p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1" }}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if></p>
</div>
</div>
</div>
</div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">Total Amount Repayable: </span></span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt; vertical-align: top;">
<div style="text-align: justify;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}€<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_TotalAmountRepayable__c}</#list></span></span></div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">Cost of Credit:</span> </span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt; vertical-align: top;">
<div style="text-align: justify;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}€<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_COC__c}</#list></span></span></div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">APR:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_APR__c}%</#list><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationType__c"NOT="New Funds Sought"}}</span></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Governing Letter of Sanction:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;">For the avoidance of doubt:</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;">a)         prior to the Effective Date of this Facility, this Facility (or the relevant part thereof, if applicable) is governed by the terms of the previous letter(s) of sanction from us to you relating to this Facility; and</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">b)         from the Effective Date of this Facility, this Facility will be governed by the terms of this Letter of Sanction.<span style="font-family: 'Arial Unicode MS', sans-serif; font-size: 13.3333px;"><span style="font-size: 10pt; line-height: 120%; font-family: 'Arial Unicode MS', sans-serif; color: black;"></#if></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p></#if></p>
<p> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  1.       GENERAL PROVISIONS</strong></p>
</td>
</tr>
</tbody>
</table>
<p>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2" LIMIT="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Effective Date</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The Finance Documents will have effect as at and from the Acceptance Date. Subject to the General Terms and Conditions, the Facility will come into effect, at our absolute discretion, on the earlier of:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.384%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.1</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">when all of the Conditions Precedent for the Facility are satisfied (to our satisfaction);</td>
</tr>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.2</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">the first date that we permit drawdown or utilisation of the Facility; or</td>
</tr>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.3</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">such date as we may determine at our absolute discretion (with or without notice to you),</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.9251%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 100%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; 18px; text-align: justify;">
<p><span dir="ltr" role="presentation">(the “</span><span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Effective</span> <span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Date</span><span dir="ltr" role="presentation">” for the Facility) and the amount (if any) of all existing loans, debts </span><span dir="ltr" role="presentation">and liabilities forming part of the Facility will be deemed drawn down/utilised and</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be </span><span dir="ltr" role="presentation">subject to the Finance Documents on the Effective Date for the Facility.</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Joint and Several Liability</strong></span>
<p><span dir="ltr" role="presentation">You hereby agree with us that:</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 84.1972%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.1</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">all agreements, obligations, covenants, undertakings, warranties, representations, </span><span dir="ltr" role="presentation">expressed or implied on the part of the Borrower in the Finance Documents will be </span><span dir="ltr" role="presentation">deemed to be made or undertaken by each of the Borrowers jointly and severally </span><span dir="ltr" role="presentation">and all refe</span><span dir="ltr" role="presentation">rences to the Borrower</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">mean and include each of them or (as the </span><span dir="ltr" role="presentation">case may require) any of them and the act, breach or default of any one Borrower </span><span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be deemed to be the act, breach or default of all of them;</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.2</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">none of the Borrowers will as against the Bank be entitled to any of the rights or remedies legal or equitable of a surety as regards the indebtedness, obligations or liabilities of any of the other of them or be entitled in competition with or priority to the Bank to claim or exercise any of the rights (in the nature of contribution or otherwise) of one joint (or joint and several) debtor against another;</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.3</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">we</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be at liberty to release or discharge any one or more of the Borrowers from </span><span dir="ltr" role="presentation">any liability under the Finance Documents o</span><span dir="ltr" role="presentation">r take any composition from or make </span><span dir="ltr" role="presentation">any other arrangements or variation with any one or more of them without thereby </span><span dir="ltr" role="presentation">releasing or discharging any other or others of them or otherwise prejudicing</span> <span dir="ltr" role="presentation">our </span><span dir="ltr" role="presentation">rights or remedies against any other or others of them; a</span><span dir="ltr" role="presentation">nd</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.4</td>
<td style="width: 95.0104%; font-family: 'Arial Unicode MS', sans-serif; border-style: hidden; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation"><span style="font-size: 10pt;">each of the Borrowers will be bound by the Finance Documents even if any of them intended or expressed to be bound by the Finance Documents is deemed in the future not to be so bound.</span></span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.5</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">the Finance Documents will remain effective notwithstanding any change in the composition of the Partnership whether by death, retirement, addition or otherwise; </span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.6</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">you will notify us if any new partner is admitted to the Partnership. Any new partner will be bound by the Finance Documents as if he were a Borrower under this Letter of Sanction and a signatory hereto and the Borrower undertakes to procure that such new partner executes such documents as we may require in order to reflect this position; and </span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.7</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">notwithstanding any change in the composition of the Partnership, we shall be entitled to account to the partners for the time being and exercise any right of set off as if there had been no such change.</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation"> </span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.5637%;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Purpose</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><span dir="ltr" role="presentation">You will only use the Facility for the purpose outlined for the Facility above. We are not required to monitor or verify the application of the Facility and if you fail to comply with this requirement, this will not prejudice any of our rights.</span></p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.4.</strong></td>
<td style="width: 90.9362%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Authority to Debit</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">You irrevocably authorise us to debit, whether by direct debit, or otherwise, any repayment instalment(s) from any accounts you have at with us together with any related fees, charges, expenses and insurance premiums. You agree that we are authorised to debit the full amount of such repayment instalment(s), fees, charges, expenses and insurance premiums from any account(s) maintained by you with us (including your loan account). Where you do not hold an account with us, we may open (and you irrevocably authorise us to open) an account specifically for the purpose of debiting these repayment instalment(s), fees, charges, expenses and insurance premiums and crediting  us or any relevant payee. You agree that we shall be under no liability for damage or loss caused by any omission to make the debits referred to in this clause.</p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.5.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Independent Advice</strong></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p>You confirm that:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 84.0627%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.1</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you are fully aware of the nature of the agreement set out in the Finance Documents and any security or other document that you are a party to or will be entering into in connection with the Finance Documents;</td>
</tr>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.2</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have been advised to take and have been given due opportunity to take separate independent legal advice, financial advice and tax advice on the effect of these documents; and</td>
</tr>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.3</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have either (i) taken appropriate legal advice and/or financial advice and/or tax advice or (ii) declined the opportunity to avail of such legal advice and/or financial advice and/or tax advice.</td>
</tr>
</tbody>
</table>
<p></#if>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2" LIMIT="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Partnership"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Effective Date</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The Finance Documents will have effect as at and from the Acceptance Date. Subject to the General Terms and Conditions, the Facility will come into effect, at our absolute discretion, on the earlier of:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 82.437%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.1</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">when all of the Conditions Precedent for the Facility are satisfied (to our satisfaction);</td>
</tr>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.2</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">the first date that we permit drawdown or utilisation of the Facility; or</td>
</tr>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.3</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">such date as we may determine at our absolute discretion (with or without notice to you),</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.9251%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 100%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; 18px; text-align: justify;">
<p><span dir="ltr" role="presentation">(the “</span><span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Effective</span> <span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Date</span><span dir="ltr" role="presentation">” for the Facility) and the amount (if any) of all existing loans, debts </span><span dir="ltr" role="presentation">and liabilities forming part of the Facility will be deemed drawn down/utilised and</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be </span><span dir="ltr" role="presentation">subject to the Finance Documents on the Effective Date for the Facility.</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.5637%;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Purpose</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><span dir="ltr" role="presentation">You will only use the Facility for the purpose outlined for the Facility above. We are not required to monitor or verify the application of the Facility and if you fail to comply with this requirement, this will not prejudice any of our rights.</span></p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.3.</strong></td>
<td style="width: 90.9362%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Authority to Debit</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">You irrevocably authorise us to debit, whether by direct debit, or otherwise, any repayment instalment(s) from any accounts you have at with us together with any related fees, charges, expenses and insurance premiums. You agree that we are authorised to debit the full amount of such repayment instalment(s), fees, charges, expenses and insurance premiums from any account(s) maintained by you with us (including your loan account). Where you do not hold an account with us, we may open (and you irrevocably authorise us to open) an account specifically for the purpose of debiting these repayment instalment(s), fees, charges, expenses and insurance premiums and crediting  us or any relevant payee. You agree that we shall be under no liability for damage or loss caused by any omission to make the debits referred to in this clause.</p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.4.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Independent Advice</strong></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p>You confirm that:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you are fully aware of the nature of the agreement set out in the Finance Documents and any security or other document that you are a party to or will be entering into in connection with the Finance Documents;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have been advised to take and have been given due opportunity to take separate independent legal advice, financial advice and tax advice on the effect of these documents; and</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have either (i) taken appropriate legal advice and/or financial advice and/or tax advice or (ii) declined the opportunity to avail of such legal advice and/or financial advice and/or tax advice.</td>
</tr>
</tbody>
</table>
<p></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  2.       CONDITIONS PRECEDENT</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}<span style="background-color: #eccafa;">{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} {{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.5</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #eccafa;">ENDIFLIST</span>}}</#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.5</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #c2e0f4;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: Helvetica, sans-serif;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #f8cac6;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}}<span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}<span style="background-color: #c2e0f4;">}<#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}}  </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}}</span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #c2e0f4;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: Helvetica, sans-serif;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<p> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span></p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  3.      SPECIFIC CONDITIONS AND COVENANTS</strong></p>
</td>
</tr>
</tbody>
</table>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;"><#if A>{{COND="A"FIELD=<span style="font-size: 13.3333px;">"LLC_BI__Loan__c.LL</span>C_BI__Account__r.AIB_EntityType__c" NOT="Partnership"}}</span></span> {{IFLIST="AIB_OtherDetails__c" FILTER="(1 OR 2) AND 3"}}<span style="background-color: #ffffff;">{{FILTER="1"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="2"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}{{FILTER="3"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}</span></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -30px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;"> In addition, you agree and undertake that you will comply with each of the following specific condition(s) and covenants that apply to the Facility:</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{LIST="AIB_OtherDetails__c" FILTER="(3 OR 4) AND 5 AND (6 OR 7)"}}<!-- FILTER: 3 FIELD: AIB_OtherDetails__c.AIB_Type__c IS: Conditions -->{{FILTER="4"FIELD="AIB_OtherDetails__c.AIB_Type__c" IS="Covenants"}}{{FILTER="5"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}{{FILTER="6"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="7"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -15px;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>3.3.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">Where the above specific condition(s) and covenants involve an obligation on you, you agree and undertake that you will comply with them to our satisfaction for so long as you owe us any amount under the Finance Documents or any Security Documents or the Facility is available for utilisation (unless we agree otherwise).</span></span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="background-color: #ffffff;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;">{{</span></span></span><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">ELSEIFLIST</span></span><span style="background-color: #ffffff;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;">}}</span></span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
</tbody>
</table>
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;"></#if>{{ELSE}}{{IFLIST</span></span><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">="AI</span></span><span style="font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;">B_OtherDetails__c" FILTER="(1 OR 2) AND 3"}}{{FILTER="1"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="2"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}{{FILTER="3"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In addition, you agree and undertake that you will comply with each of the following specific conditions(s) and covenants:</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.1 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will immediately inform us of any change in the constitution of the Partnership,<br role="presentation" />      whether as a result of death, resignation, retirement or expulsion of the Partnership’s<br role="presentation" />          present or future partners or the admission of any new partners; and</span></span></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.2 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will not terminate the Partnership Agreement (if any), or amend it in any manner which<br role="presentation" />   would prejudice our interests under the Finance Documents or any Security<br role="presentation" />         Document.</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In addition, you agree and undertake that you will comply with each of the following specific condition(s) and covenants that apply to the Facility:</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{LIST="AIB_OtherDetails__c" FILTER="(3 OR 4) AND 5 AND (6 OR 7)"}}<!-- FILTER: 3 FIELD: AIB_OtherDetails__c.AIB_Type__c IS: Conditions -->{{FILTER="4"FIELD="AIB_OtherDetails__c.AIB_Type__c" IS="Covenants"}}{{FILTER="5"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}{{FILTER="6"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="7"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; 10px; margin-top: -15px;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>3.4.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">Where the above specific condition(s) and covenants involve an obligation on you, you agree and undertake that you will comply with them to our satisfaction for so long as you owe us any amount under the Finance Documents or any Security Documents or the Facility is available for utilisation (unless we agree otherwise).</span></span></p>
</td>
</tr>
</tbody>
</table>
<p>{{ELSEIFLIST}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In addition, you agree and undertake that you will comply with each of the following specific conditions(s) and covenants:</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.1 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will immediately inform us of any change in the constitution of the Partnership,<br role="presentation" />      whether as a result of death, resignation, retirement or expulsion of the Partnership’s<br role="presentation" />          present or future partners or the admission of any new partners; and</span></span></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.2 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will not terminate the Partnership Agreement (if any), or amend it in any manner which<br role="presentation" />   would prejudice our interests under the Finance Documents or any Security<br role="presentation" />         Document.</span></span></td>
</tr>
</tbody>
</table>
<p></#if></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  4.      EARLY REPAYMENT AND ADDITIONAL PAYMENTS</strong></p>
</td>
</tr>
</tbody>
</table>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c == "Fixed"></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10.0pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it or make extra payments towards it at any time and you will not have to pay a Breakage Cost or compensation to us. If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvatica;"> </p>
<p style="font-size: 9pt; font-family: Helvatica;"></#if></p>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Overdrafts/Credit Lines"></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it at any time.  If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvatica;"> </p>
<p style="font-size: 9pt; font-family: Helvatica;"></#if></p>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c == "Variable"></h6>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.6514%;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 99.7984%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it at any time.  If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.2.</strong></td>
<td style="width: 99.7984%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You may also make extra payments towards the Facility at any time.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif;"></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  5.       FEES, CHARGES AND EXPENSES</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; vertical-align: top;">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Fees, Charges and Expenses Incurred</strong>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In certain circumstances, you will need to pay for certain fees, charges and expenses (including VAT, where relevant) in relation to the Facility, any security and the operation of accounts. These fees, charges and expenses are set out and/or explained in this Letter of Sanction, in Section VII (General) of the General Terms and Conditions and/or in the current edition of our “Business Fees and Charges” booklet (available in any of our branches and/or on our website).</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; font-size: 10pt; font-family: Helvetica;">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Solicitors’ Fees Payable by the Borrower</strong>
<div>
<div>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">If a solicitor is acting for us in connection with the Finance Documents and/or any Security Documents, you will<strong> </strong>have to pay our solicitor’s fees as well as your own.</p>
</div>
</div>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; font-size: 10pt; font-family: Helvetica;">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Indemnity</strong>
<div>
<div>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You will<strong> </strong>indemnify us and keep us at all times indemnified against any and all actions, costs, demands, claims, losses or damage which we may suffer in connection with, or as a result of, entering into and/or enforcing the Finance Documents and/or any other document (including any Security Documents) or agreement related to or in connection with your obligations and liabilities under the Finance Documents.</p>
</div>
</div>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  6.       EVENTS OF DEFAULT</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>6.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">There are circumstances under which we can require you to repay the Facility early. These include the happening of any of the events set out in clause 4.2 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>6.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">All of our rights arising out of this section are without prejudice to any other right we may have, howsoever arising.</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  7.       CONTACTING US</strong></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 90.5637%; 164px; border-style: none;" border="1">
<tbody>
<tr>
<td style="width: 99.3775%; 164px; border-style: none;"><span style="font-size: 10pt;">To contact us about the Facility, please write to us at <strong>${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine4__c}</strong> or call us on <strong>${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}</strong>.  In certain circumstances, we may require you to write to us.  We have indicated where this is the case in these Finance Documents.</span></td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"> </p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Central Credit Register</strong></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; padding-left: 120px;"> </p>
<table style="border-collapse: collapse; width: 90.5637%; border-color: #000000; border-style: solid;" border="1">
<tbody>
<tr>
<td style="width: 100%; font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify; border-color: #000000; border-style: solid;"><strong>NOTICE: Under the Credit Reporting Act 2013 lenders are required to provide personal and credit information for credit applications and credit agreements of €500 and above to the Central Credit Register. This information will be held on the Central Credit Register and may be used by other lenders when making decisions on your credit applications and credit agreements.</strong></td>
</tr>
</tbody>
</table>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 0px; margin-right: 70px; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: justify;">The Central Credit Register is maintained and operated by the Central Bank of Ireland. For information on your rights and duties under the Credit Reporting Act 2013 please refer to the factsheet prepared by the Central Bank of Ireland. This factsheet is available on www.centralcreditregister.ie. Copies can also be obtained at your local AIB branch and on <a href="http://www.aib.ie">www.aib.ie</a>.</p>
<p><div class="mce-pagebreak"></div></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>BANK SIGNATURE</strong></p>
<p class="format" style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">We are pleased to offer the Facility to you on the terms and subject to the conditions set out in the Finance Documents.  If you agree to the terms of the Finance Documents, please sign where indicated below and return the signed Letter of Sanction to  us by ${LLC_BI__Loan__c.AIB_SanctionValidityDate__c}  (unless we agree otherwise). This acceptance period is solely for our benefit, and we may waive it at any time (with or without notice to you).</p>
<p class="format" style="font-size: 10pt; font-family: Arial Unicode MS, sans-serif;">Thank you for the opportunity to provide the Facility to you.</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Signed on behalf of Allied Irish Banks, p.l.c.</strong></p>
<table style="border-collapse: collapse; width: 89.3457%; margin: 0px 60px;" border="1">
<tbody>
<tr style="22px; vertical-align: top;">
<td style="width: 54.0541%; border-style: hidden; text-align: left;">
<p><img style="margin-top: 20px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_Signature" alt="" width="281" height="29" /></p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Maria Hynes</span></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Head of Fulfilment CoE</span></em></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
</td>
<td style="width: 1.66945%; border-style: hidden; vertical-align: top;"> </td>
<td style="width: 77.261%; border-style: hidden; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 72.3184%;" border="1">
<tbody>
<tr>
<td style="width: 100%; border: 1.5px hidden #5a5a5a;"><span style="font-size: 10pt; font-family: Arial Unicode MS, sans-serif;">Date:<span style="text-decoration: underline;">        ${LLC_BI__Loan__c.AIB_CurrentDate__c}        </span></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p><div class="mce-pagebreak"></div></p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.AIB_CCustSignPref__c"IS="Paper Signature"}}{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}} {{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; margin: 0px; width: 86.5026%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 9pt; font-family: Helvetica, sans-serif; vertical-align: top;">
<p style="font-family: Helvetica, sans-serif;"><strong>BORROWER ACCEPTANCE</strong></p>
<p style="font-family: Helvetica, sans-serif; font-size: 9pt; text-align: justify;"><strong>By signing below, we confirm that we agree with and accept the terms and conditions of the Finance Documents, copies of which we have received and we undertake to carry out all obligations set out in the Finance Documents.</strong>{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span></p>
<p style="font-family: 'Arial Unicode MS', sans-serif;">                               Signed for and on behalf of <span style="font-size: 9.0pt; line-height: 107%; font-family: Helvetica, sans-serif; font-weight: bold;">${LLC_BI__Legal_Entities__c.AIB_CAName__c} </span>by:</#list></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 89.0672%; 10px; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; 10px; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<br />_______________________________
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 89.0672%; 10px; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; 10px; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<br />_______________________________
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<div class="footer">
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"> </p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"> </p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;">{{ELSEIFLIST}}</p>
<table class="center" style="border-collapse: collapse; width: 86.5026%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 100%; border-style: hidden; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p style="font-family: Helvetica, sans-serif;"><strong>BORROWER ACCEPTANCE</strong></p>
<p style="font-family: Helvetica, sans-serif; text-align: justify;"><strong>By signing below, I confirm that I agree with and accept the terms and conditions of the Finance Documents, copies of which I have received and I undertake to carry out all obligations set out in the Finance Documents.</strong></p>
</td>
</tr>
</tbody>
</table>
<span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span>
<table class="center" style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;"><span style="font-size: 7pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<p></#list> </#if></#if></p>
<p> </p>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt;"><strong>SCHEDULE 1</strong></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt; vertical-align: top;"><strong>DEFINITIONS AND INTERPRETATION</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>1.   DEFINITIONS</strong></p>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: justify;">In this Letter of Sanction, where the below reference appears unless the context admits or requires otherwise:</p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>"Acceptance Date" </strong><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the date the Finance Documents are accepted by </span><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">you</span><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>“AIB Group”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the Bank, its subsidiaries (including, for the avoidance of doubt, EBS d.a.c. and Haven Mortgages Limited) and affiliates and their respective parent and subsidiary companies;<br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Bank”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means Allied Irish Banks, p.l.c. and will include its successors, affiliates and assignees;<br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Borrower”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term at the beginning of this Letter of Sanction and where there is more than one borrower, use of the term “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Borrower</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Borrowers</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>You</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>you</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">” will be deemed to refer to all such borrowers and will include its/their successors and permitted assignees;</span> </span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Conditions Precedent” </strong>means any conditions/requirements that must be completed to the Bank’s satisfaction prior to drawdown of any Facility and as set out in the Conditions Precedent section of this Letter of Sanction;<span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"><br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Drawdown Letter”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means a letter sent to you by the Bank after your Term Loan Facility is drawn down including details of (i) the actual interest rate; (ii) the actual repayment amounts; (iii) the actual repayment dates; (iv) the total amount repayable; (v) the Cost of Credit; and (vi) the APR, that will apply to the Facility. <br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Effective Date</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term in clause 1.1  of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Facility</strong>” means the banking facility as more particularly set out in the “Facility” section of this Letter of Sanction agreed to be made available to, and/or provided to renew/replace/restructure a facility/certain facilities (or part thereof, if applicable) on behalf of the Borrower by the Bank pursuant to this Letter of Sanction and <strong>Facility </strong>will mean any one of them as the context will require;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Guarantor</strong>” means the person(s) (if any) to provide guarantees in accordance with the provisions of the Security section (if any) of this Letter of Sanction, and (where relevant) the personal representatives, executors, administrators, successors and permitted assignees of such persons having any liability pursuant to the terms of such guarantee(s) or indemnity/ies as are given by them; </span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Letter of Sanction</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means this agreement between the Bank and the Borrower (including the schedules of this Letter of Sanction), as amended or confirmed from time to time;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Maximum Amount</strong>”<span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> means in relation to any Facility, the amount specified in the Maximum Amount clause for that Facility in the “Facility“ section of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Partnership</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the partnership referred to at the beginning of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Partnership Agreement</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the partnership agreement entered into by the individual partners in the Partnership as the same may be amended and supplemented from time to time (if any);</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Repayment Schedule</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the document provided to you with this Letter of Sanction setting out the indicative repayment amounts and indicative repayment dates that will apply to your Term Loan Facility as calculated based on the indicative drawdown date set out in this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Secured Asset</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means any property, asset or undertaking which is the subject of any security created or intended to be created by any Security Documents; </span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Security Documents</strong>” means any of the document(s) listed in the Security section (if any) of this Letter of Sanction and all documents ancillary thereto, in a form and substance satisfactory to the Bank and its legal advisors including but not limited to powers of attorney, certificates of title, board minutes, letters of consent and authorisation, stock transfer forms, title deeds, share certificates and life assurance policies;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>You</strong>” or “<strong>you</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term in the definition of Borrower above.</span></span></p>
<p style="padding-left: 80px; font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>2.   INTERPRETATION</strong></p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"><span dir="ltr" role="presentation">Unle</span><span dir="ltr" role="presentation">ss a contradictory indication appears, a reference in this Letter of Sanction to:</span></p>
<table class="center" style="border-collapse: collapse; width: 100.188%;" border="1">
<tbody>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">a.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">a <span style="font-family: Arial, sans-serif; font-size: 13.3333px;">person </span>includes any individual, firm, company, corporation, government, state or agency of a state or other unincorporated body or association (including a partnership, trust, fund, joint venture or consortium) or any other entity (whether or not having a separate legal personality);</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">b.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a paragraph, clause, sub-clause, section, sub-section or schedule of this Letter of Sanction is for ease of reference only and will not affect the construction or interpretation thereof;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">c.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a provision of law includes any amendment or re-enactment thereof and any subordinate legislation made under it. Any reference to any statutory provision, or to any order or regulation includes that provision, order or regulation as extended, modified, replaced and/or re-enacted from time to time (whether before or after the date of the Letter of Sanction) and all regulations and orders from time to time made thereunder or deriving validity therefrom;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">d.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to “including” and “in particular” will not be construed restrictively but will be construed as being illustrative and mean “including without prejudice to the generality of the foregoing and without limitation” and “in particular, but without limitation”;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">e.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any paragraph, clause, sub-clause, section or sub-section of the General Terms and Conditions includes any extension, modification, or replacement thereof including from time to time where the specific paragraph, clause, sub-clause, section or sub-section reference is re-numbered;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">f.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a previous letter of sanction includes any extension, modification and/or replacement thereof; and</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">g.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a month will mean a calendar month and any references to a day will mean a period of twenty-four consecutive hours.</td>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p><div class="mce-pagebreak"></div></p>
<p><#if A><#if LLC_BI__Loan__c.AIB_CCustSignPref__c == "Paper Signature">{{IFLIST="LLC_BI__Legal_Entities__c" LIMIT="1" FILTER="(1 OR 2) AND (3 OR 4 OR 5 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trustee"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}</p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt;"><strong>SCHEDULE 2</strong></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt; vertical-align: top;"><strong>EXTRACT OF BOARD MINUTES</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Certified extract from minutes of a duly convened, constituted meeting of the Board of Director(s) of</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>{{LIST="LLC_BI__Legal_Entities__c" LIMIT="1" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</#list> (the "Company"), held on the ___ day of ___________20___</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>1.  <span dir="ltr" role="presentation">Quorum &amp; Director(s)’</span> <span dir="ltr" role="presentation">Declarations</span></strong></p>
<p style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span id="page3R_mcid14"><span dir="ltr" role="presentation">The Chair</span><span dir="ltr" role="presentation">person</span> <span dir="ltr" role="presentation">noted that the meeting had been properly convened and that a quorum was</span><br role="presentation" /><span dir="ltr" role="presentation">present at the meeting comprising director(s) entitled to vote on the proposed resolutions and the</span></span><span id="page3R_mcid15"><br role="presentation" /><span dir="ltr" role="presentation">Chair</span><span dir="ltr" role="presentation">person</span></span><span id="page3R_mcid16"> <span dir="ltr" role="presentation">noted, for the purposes of the Companies Act</span> <span dir="ltr" role="presentation">2014:</span> <span dir="ltr" role="presentation">(i) that each of the director(s)</span><br role="presentation" /><span dir="ltr" role="presentation">present had disclosed at the meeting the manner (if any) in which he or she is, directly or indirectly,</span><br role="presentation" /><span dir="ltr" role="presentation">interested in the business to be transacted at the meeting, whether as a director of any company</span><br role="presentation" /><span dir="ltr" role="presentation">which is party</span> <span dir="ltr" role="presentation">to such business or otherwise, in accordance with section 231 of the Companies Act</span><br role="presentation" /><span dir="ltr" role="presentation">2014; (ii) that at least one of the director(s) of the Company is resident in the European Economic</span><br role="presentation" /><span dir="ltr" role="presentation">Area; (iii) that each director of the Company present did not individuall</span><span dir="ltr" role="presentation">y hold more than 25</span><br role="presentation" /><span dir="ltr" role="presentation">directorships and was therefore eligible to vote on all board resolutions brought before the meeting;</span><br role="presentation" /><span dir="ltr" role="presentation">(iv) that no person acting as a director of the Company is a body corporate or an unincorporated</span><br role="presentation" /><span dir="ltr" role="presentation">body of persons; (v) that each person</span> <span dir="ltr" role="presentation">appointed as director of the Company or, in the case of an</span><br role="presentation" /><span dir="ltr" role="presentation">individual, secretary of the Company, has attained the age of 18 years and had attained the age of</span><br role="presentation" /><span dir="ltr" role="presentation">18 years at the time of their appointment; (vi) that no person acting as director or secretary of</span> <span dir="ltr" role="presentation">the</span><br role="presentation" /><span dir="ltr" role="presentation">Company,</span> <span dir="ltr" role="presentation">or</span> <span dir="ltr" role="presentation">directly or</span> <span dir="ltr" role="presentation">indirectly</span> <span dir="ltr" role="presentation">taking</span> <span dir="ltr" role="presentation">part</span> <span dir="ltr" role="presentation">or</span> <span dir="ltr" role="presentation">concerned</span> <span dir="ltr" role="presentation">in</span> <span dir="ltr" role="presentation">the</span> <span dir="ltr" role="presentation">promotion,</span> <span dir="ltr" role="presentation">formation</span> <span dir="ltr" role="presentation">or</span><br role="presentation" /><span dir="ltr" role="presentation">management of the Company, is an undischarged bankrupt; and (vii) that no person who is the</span><br role="presentation" /><span dir="ltr" role="presentation">subject of a declaration under section 819 or sections 839</span><span dir="ltr" role="presentation">-</span><span dir="ltr" role="presentation">846 of th</span><span dir="ltr" role="presentation">e Companies Act 2014 is</span><br role="presentation" /><span dir="ltr" role="presentation">appointed or acts in any way, directly or indirectly, as a director or secretary of the Company.</span></span></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>2.  Purpose of the Meeting</strong></p>
<p style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span dir="ltr" role="presentation"> The Chairperson reported that Allied Irish Banks, p.l.c. (the “<span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>Bank</strong></span>”) had made an offer to make a facility available to the Company upon the terms and subject to the conditions set out in a letter of sanction dated ${LLC_BI__Loan__c.AIB_CurrentDate__c} (including schedules) and the Bank’s General Terms and Conditions governing Business Lending as may be amended from time to time (the <span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>“Letter of Sanction</strong></span>”), a copy of which was tabled at the meeting.</span></p>
<p style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>3.  Approvals</strong></p>
<p class="format" style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span dir="ltr" role="presentation">The director(s) carefully considered the terms of the Letter of Sanction and in particular, the rights</span><br role="presentation" /><span dir="ltr" role="presentation">and obligation</span><span dir="ltr" role="presentation">s of the Company, following which</span> <span dir="ltr" role="presentation"><span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>IT WAS RESOLVED</strong></span></span> <span dir="ltr" role="presentation">that:</span></p>
<table class="center" style="border-collapse: collapse; width: 100.044%;" border="1">
<tbody>
<tr>
<td style="width: 7.05003%; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden;">      3.1.</td>
<td style="width: 91.7111%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;"><span dir="ltr" role="presentation">it was for the commercial advantage and in the best interests of the Company to approve the entry into and the performance by the Company of its obligations under the Letter of Sanction (and such other authorities, documents and instructions required to be signed by the Company in connection with the Letter of Sanction and the facility/facilities) and the signing, delivery and performance of the Letter of Sanction (and any such authorities, documents and instructions required to be signed by the Company in connection with the Letter of Sanction and the facility/facilities) be hereby ratified (where already signed on behalf of the Company) and approved (where not already signed on behalf of the Company); and</span></td>
</tr>
<tr>
<td style="width: 7.05003%; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden;">      3.2.</td>
<td style="width: 91.7111%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;"><span dir="ltr" role="presentation">any director is authorised to execute the Letter of Sanction (and any other authorities, documents and instructions required in connection with the Letter of Sanction and the facility/facilities) under hand, electronically, or if required, under seal in accordance with the Company’s constitution and the execution of the Letter of Sanction by any director (where the Letter of Sanction has already been signed on behalf of the Company) is hereby ratified.</span></td>
</tr>
</tbody>
</table>
<p style="padding-left: 20px; font-size: 10pt; text-align: justify;"><strong><span dir="ltr" role="presentation">I hereby certify that the above is a true extract from the minutes of the meeting of the board of </span></strong><strong><span dir="ltr" role="presentation">director(s) of the Company duly convened, constituted and held on the date mentioned above </span></strong><strong><span dir="ltr" role="presentation">and</span> <span dir="ltr" role="presentation">that the above resolutions were passed in accordance with and comply with the Company’s </span></strong><strong><span dir="ltr" role="presentation">constitution.</span></strong></p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong><span dir="ltr" role="presentation">Dated this ___day of ___________20___</span></strong></p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Signed           _______________________________</strong></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>                   Chairperson of Meeting</strong></p>
<p> </p>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0; text-align: center; left: 0;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: Arial Unicode MS, sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p style="padding-left: 80px;"></#if></#if></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden; padding-left: 120px;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 41px; font-size: 9pt; border-style: none; font-family: Helvetica; text-align: left;">
<p><span style="font-family: Helvetica, sans-serif; font-weight: bold;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</span></p>
<p style="text-align: center;"><strong><span style="font-family: Helvetica, sans-serif; font-size: 14pt;">Repayment Schedule</span></strong></p>
</th>
<th style="width: 9.59025%; font-size: 9pt; height: 41px; border-style: none; text-align: left;"> </th>
<th style="width: 4.79512%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p>{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</p>
<table class="Center" style="margin-left: 40.85pt; width: 83.9461%; padding-left: 120px;" border="2px solid;" cellspacing="0" cellpadding="0">
<tbody>
<tr style="22px; background: #e6e6e6; font-family: Helvetica, sans-serif;">
<td style="width: 17.4065%;"><span style="font-size: 10pt;"><strong>Date</strong></span></td>
<td style="width: 21.8842%;"><span style="font-size: 10pt;"><strong>Total Repayment</strong></span></td>
<td style="width: 20.6629%;"><span style="font-size: 10pt;"><strong>Principal Amount</strong></span></td>
<td style="width: 20.3916%;"><span style="font-size: 10pt;"><strong>Interest Amount</strong></span></td>
<td style="width: 27.1051%;"><span style="font-size: 10pt;"><strong>Balance (Excluding any arrears)</strong></span></td>
</tr>
<tr style="156px; font-family: Arial Unicode MS, sans-serif;">
<td style="width: 17.4065%;"><span style="font-size: 10pt;">{{LIST="AIB_RemainingRepaymentSchedule__c" <span style="font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_RemainingRepaymentSchedule__c.AIB_Date__c ASC"</span>}}${AIB_RemainingRepaymentSchedule__c.AIB_Date__c}</span></td>
<td style="width: 21.8842%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€</span>${AIB_RemainingRepaymentSchedule__c.AIB_TotalAmount__c}</span></td>
<td style="width: 20.6629%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">${AIB_RemainingRepaymentSchedule__c.AIB_PrincipalBalanceCurrency__c}</span>${AIB_RemainingRepaymentSchedule__c.AIB_PrincipalAmount__c}</span></td>
<td style="width: 20.3916%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€</span>${AIB_RemainingRepaymentSchedule__c.AIB_InterestAmount__c}</span></td>
<td style="width: 27.1051%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€${AIB_RemainingRepaymentSchedule__c.AIB_OutstandingPositiveBalance__c}</span></#list></span></td>
</tr>
</tbody>
</table>
<p></#list></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p style="padding-left: 80px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"><span id="page3R_mcid14"></span></p>
<p><div class="mce-pagebreak"></div></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 41px; font-size: 9pt; border-style: none; font-family: Helvetica; text-align: left;">
<p><span style="font-family: Helvetica, sans-serif; font-weight: bold;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</span></p>
<p style="font-size: 24pt; font-family: Helvetica; font-weight: normal; text-align: center;"><strong><span style="font-family: Helvetica, sans-serif; font-size: 14pt;">                          Letter of Sanction</span></strong></p>
</th>
<th style="width: 9.59025%; font-size: 9pt; height: 41px; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat.sandbox.file.force.com/servlet/servlet.ImageServer?id=0151l000000B1HO&amp;oid=00D1l0000000l1h&amp;lastMod=1577461054000" width="112" height="112" /></strong></th>
<th style="width: 4.79512%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: Arial, sans-serif; text-align: left; margin: 0px 0px 0px;"> </p>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 9pt; font-family: Helvetica; vertical-align: top;">
<tbody>
<tr>
<td style="width: 59.6992%; border-style: hidden;">
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span>"IS="Partnership"}}</span></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 10pt;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_LetterofOfferSigner__c</span>"IS="True"}}</span></span> <span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_Sequence__c</span>"IS="1"}}</span></span> </span></span><br /><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}}<span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span></span><span style="font-size: 10pt; line-height: normal;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span><br /><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span></p>
</td>
<td style="width: 7.70533%; border-style: hidden;">
<p> </p>
</td>
<td style="width: 129.104%; border-style: hidden; vertical-align: top;">
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" LIMIT="1"}}{{FILTER="A"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}</span>${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}.<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}<span style="font-size: 6.66667px;"></#list></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; font-family: Arial, sans-serif;"><span style="font-size: 10pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</span></span><strong>FAO:</strong> The Secretary</#if></span></p>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 10pt; font-family: Helvetica; vertical-align: top;">
<tbody>
<tr>
<td style="width: 39.5553%; border-style: hidden; margin: 0cm;">
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Private &amp; Confidential</strong></span></p>
</td>
<td style="width: 27.8492%; border-style: hidden;">
<p> </p>
</td>
<td style="width: 129.104%; border-style: hidden;">
<p class="format" style="text-align: left;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"> ${LLC_BI__Loan__c.AIB_CurrentDate__c} </span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border: 2px solid #000000; 71px; width: 90.707%; margin-left: 30px;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%; font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify;"><strong>Warning: If you do not meet the repayments on your credit facility agreement, your account will go into arrears.  This may affect your credit rating, which may limit your ability to access credit in the future. </strong></td>
</tr>
</tbody>
</table>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: left;">Dear <span style="color: #e03e2d;"><span style="color: #000000;">Customer,</span></span><br /><br /><span style="color: #000000;">Allied Irish Banks, p.l.c. has agreed to offer the facility listed below (the <strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">“Facility”</span></strong>) to you:</span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}} <span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span><span style="font-size: 9pt; line-height: normal;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}, </span><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span>"IS="Partnership"}}</span></span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 10pt;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}<span style="font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_<span style="color: #000000; background-color: #ffffff;">BI__Legal_Entities__c.AIB_LetterofOfferSigner__c</span>"IS="True"}}</span></span> <span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}, </span><span style="font-size: 10pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<span style="color: #000000;">${LLC_BI__Legal_Entities__c.AIB_LastDocumentSignerText__c}</span> </span><br /><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; color: #000000; background-color: #ffffff;"></#list></#if></span></p>
<p class="format" style="font-size: 10pt; font-family: Arial, sans-serif; text-align: left; margin: 0px;"> </p>
<div>
<div style="text-align: left;"><span style="font-size: 10pt;"><!--SME1-9078 IMPACT-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}<!-- FILTER: 2 FIELD: LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c IS: Borrower -->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="2"}}{{FILTER="2" FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}(together, the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}).</#list>{{ELSEIFLIST}}).</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>")</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}).</#list>{{ELSEIFLIST}}).</#if></#if></span></div>
</div>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">The Facility is subject to the terms and conditions set out in this document (including any schedules) (the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">Letter of Sanction</span>”) and our General Terms and Conditions governing Business Lending (the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">General Terms and Conditions</span>”).  We have enclosed a current copy of the General Terms and Conditions with this Letter of Sanction.  This Letter of Sanction and the General Terms and Conditions are collectively referred to as the “<span style="font-family: Helvetica, sans-serif; font-weight: bold;">Finance Documents</span>”. </p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">Please read the Finance Documents carefully and, if you have any questions, contact us.  You have the right to seek independent legal and financial advice in relation to the Finance Documents and we strongly recommend that you do so before you sign it. You also have the right to be supplied with a copy of the Finance Documents at any time.</p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;">If there is any inconsistency between the provisions of this Letter of Sanction and the General Terms and Conditions, then the terms of this Letter of Sanction will prevail to the extent of any conflict.  Capitalised terms used that are not otherwise defined in this Letter of Sanction shall, unless the context requires otherwise, have the meanings set out in the General Terms and Conditions.</p>
<p><div class="mce-pagebreak"></div></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 5pt; font-family: Helvetica, sans-serif;"><#if (A OR B)><#if LLC_BI__Loan__c.AIB_ProductCode__c == "54103"><#if LLC_BI__Loan__c.AIB_ProductCode__c == "54104"></span>               <strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">The Facility</span></strong></p>
<table class="Center" style="margin-left: 40.85pt; border-collapse: collapse; border: none; width: 83.9461%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 17.3%; border: 1pt solid; background: #e6e6e6; padding: 0cm 5.4pt;" valign="top">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">The Facility:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; background: #e6e6e6; padding: 0cm 5.4pt;" valign="top">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif; color: black;">Term Loan</span></strong></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: left;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Quote Reference:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;"><span style="font-size: 10pt; line-height: 120%; font-family: 'Arial Unicode MS', sans-serif; color: black;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span>${AIB_Quote__c.Name}</#list></span></p>
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">This reference number is for internal bank purposes.</span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Indicative Information  and  Calculation Details:</span></strong></p>
</td>
<td style="width: 82.7%; border-image: initial; border-right: 1pt solid; border-bottom: 1pt solid; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">Please note that any amounts, number of repayment instalments, dates and interest rates shown in this Facility table and the attached Repayment Schedule are indicative only and we will send you a Drawdown Letter after your Facility is drawn down with details of: (i) the actual interest rate; (ii) the actual repayment amounts and number of repayment instalments; (iii) the actual repayment dates; (iv) the total amount repayable; (v) the Cost of Credit; and (vi) the APR, that will apply to this Facility.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">The figures in this table and the Repayment Schedule are correct as at <span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}${LLC_BI__Loan__c.AIB_CurrentDate__c}</span> and are calculated using an indicative drawdown date of <span style="background-color: #ffffff;">${LLC_BI__Loan__c.AIB_CurrentDate__c}  </span>and an indicative first repayment date of ${AIB_Quote__c.AIB_FirstRepaymentDate__c}<span style="font-size: 10pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">.</#list> </span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">This indicative first repayment date is based on your preferred repayment date as advised as part of your application. We require a minimum period between drawdown and first repayment date so when you return your signed Letter of Sanction, we may need to amend your first repayment date to the next appropriate date based on your preferred repayment date and frequency. This will be advised to you in the Drawdown Letter you will be sent after your Facility is drawn down.</p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Maximum Amount:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">€${LLC_BI__Loan__c.LLC_BI__Amount__c}</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Arial Unicode MS, sans-serif; text-align: left;"> </p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Purpose:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"> {{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}${AIB_Quote__c.AIB_PurposeName__c}</#list></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Interest Rate:</span></strong></p>
</td>
<td style="width: 82.7%; border: 1pt solid #000000; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong> As at ${LLC_BI__Loan__c.AIB_CurrentDate__c}, the interest rate is ${AIB_Quote__c.AIB_AIR__c}% per year. This is our Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate<#if A OR B><#if AIB_Quote__c.AIB_MarginAdjustment__c == "Plus"><#if AIB_Quote__c.AIB_MarginAdjustment__c == "Minus">, ${AIB_Quote__c.AIB_MarginAdjustment__c} ${AIB_Quote__c.AIB_Margin__c}% per year.{{ELSE}}.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">The interest rate outlined above is indicative and based on the prevailing Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate on the indicative drawdown date outlined above.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">We may change the prevailing Business ${AIB_Quote__c.AIB_RateType__c} Loan Rate from time to time. When your Facility is drawn down, the prevailing Business ${AIB_Quote__c.AIB_RateType__c}</#list> Loan Rate on that date will be applied to your account (which might be different to the interest rate set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"IS="EDNull"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="2"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c" IS="Fixed"}}</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">This rate will not change for the term of your loan.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.</#if></#if>{{IFLIST="AIB_Quote__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"IS="EDNull"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="2"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong><#if B>{{COND="B"FIELD="LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c" IS="Variable"}}</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;">Our Business Variable Loan Rate is variable and may change throughout the period of this Letter of Sanction. There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.<br /><span style="font-family: Arial, sans-serif; font-size: 13.3333px;"></#if></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_EffectiveDateRateCriteria__c"NOT="EDNull"}}{{LIST="AIB_Quote__c" FILTER="1" LIMIT="1"}}<strong><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span></strong> </span><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">Our Business Variable Loan Rate is variable and may change throughout the period of this Letter of Sanction. We are changing our Business Variable Loan Rate on ${AIB_Quote__c.AIB_Effective_Date__c}. From that date an interest rate of ${AIB_Quote__c.AIB_Effective_Rate__c}%  will apply to your Facility. There is more information about interest and how it will be calculated and charged in Section V of the General Terms and Conditions.</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;"></#list></#if></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Basis of Calculation:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; font-family: Arial Unicode MS, sans-serif;">Interest on the Facility is calculated on a daily basis using the 360 day count convention. This means that interest on the Facility is calculated daily on the relevant balance applying the relevant interest rate divided by 360.</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">If there is any inconsistency or contradiction between the provisions of this Letter of Sanction and the General Terms and Conditions regarding the calculation of interest on the Facility, then the terms of this Letter of Sanction will prevail to the extent of any conflict. <br /></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Repayment:</span></strong></p>
</td>
<td style="width: 82.7%; padding: 0cm 5.4pt; border: 1pt solid #000000; vertical-align: top;">
<div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="(1 OR 2) AND 3"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Annuity (C&amp;I) --><!-- FILTER: 2 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Deferred followed by Annuity (C&amp;I) -->{{FILTER="3"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{IFLIST="AIB_Quote__c" FILTER="(1 OR 2) AND 3"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDNull --><!-- FILTER: 2 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDlessFRD -->{{FILTER="3"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_RepaymentStructure__c" FILTER = "A"}}<!-- FILTER: A FIELD: AIB_RepaymentStructure__c.AIB_RepaymentType__c IS: C&amp;I -->This Facility is repayable by you making ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list></#list></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_EffectiveDateRateCriteria__c IS: EDgreaterorequalFRD -->{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}{{LIST="AIB_RepaymentStructure__c" FILTER = "A"}}<!-- FILTER: A FIELD: AIB_RepaymentStructure__c.AIB_RepaymentType__c IS: C&amp;I -->This Facility is repayable by you making one repayment of €${AIB_RepaymentStructure__c.AIB_FirstRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_FirstRepaymentStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion);</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">${AIB_RepaymentStructure__c.AIB_NumberOfRepaymentRateChange__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of € ${AIB_RepaymentStructure__c.AIB_RemainingRepaymentsAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_RemainingRepaymentsStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list></#list></#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="C"}}<!-- FILTER: C FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable -->Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Interest Only followed by Annuity (C&amp;I) --></span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}} </span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#list AIB_RepaymentStructure__c as item></span><span style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#if A><#if AIB_RepaymentStructure__c.AIB_RepaymentType__c == "Interest Only"></span><span style="font-size: 10pt;">This Facility is repayable by you making the following repayments:</span></p>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">a) ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments to pay the interest accrued on this Facility commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c};</#if><#if B> <#if AIB_RepaymentStructure__c.AIB_RepaymentType__c == "C&amp;I">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">b) ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal), commencing on ${AIB_RepaymentStructure__c.AIB_FirstRepaymentStartDate__c} (or such other date that is acceptable to the Bank at its absolute discretion).</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#list></#list></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule.</p>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if>{{IFLIST="AIB_Quote__c" FILTER="1"}}<span style="font-size: 10pt;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Interest Only followed by Bullet (C&amp;I) -->{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}<#list AIB_RepaymentStructure__c as item>This Facility is repayable by you making the following repayments:</span></p>
</div>
</div>
<div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">(a) ${AIB_RepaymentStructure__c.AIB_UpdatedNoRepaymentsIOBullet__c} consecutive ${AIB_RepaymentStructure__c.AIB_OPRepaymentFrequency__c} repayments to pay the interest accrued on this Facility commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c};</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Followed by:</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">(b) a final repayment equal to all amounts that remain outstanding in respect of this Facility (including interest accrued that has not already been paid) on ${AIB_Quote__c.AIB_ExpiryDate__c}. We have estimated that the amount of this final repayment will be €${AIB_RepaymentStructure__c.AIB_OPMaxRepaymentAmount__c}.</#list> </#list></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobePaidbyEFTRepayments__c"IS="false"}}Please note that all repayments including the final repayment will be paid by direct debit, and we will give you notice prior to your final repayment date to confirm the final repayment date and the final repayment amount.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1"}}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if><span style="font-size: 10pt;">{{IFLIST="AIB_Quote__c" FILTER="1"}}</span><span style="font-size: 10pt;"><!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RepaymentStructure__c IS: Seasonal --></span><span style="font-size: 10pt;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</span><span style="font-size: 10pt;"><#list AIB_RepaymentStructure__c as item></span><span style="font-size: 10pt;">This Facility is repayable by you making ${AIB_RepaymentStructure__c.AIB_OPOfRepayments__c} repayments of €${AIB_RepaymentStructure__c.AIB_StandardRepaymentAmount__c} (towards interest as it falls due and any balance being principal) in the month(s) of ${AIB_RepaymentStructure__c.AIB_IPSeasonalMonthsName__c} when they fall due, commencing on ${AIB_Quote__c.AIB_FirstRepaymentDate__c} (or such other date that is acceptable to the Bank at its absolute discretion). </#list> </#list></span></p>
</div>
<div>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that your final repayment may be different (higher or lower) from the repayment amount outlined above. The amount of this final repayment can be found on the attached Repayment Schedule. </p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">{{IFLIST="AIB_Quote__c" FILTER="1" }}<!-- FILTER: 1 FIELD: AIB_Quote__c.AIB_RateType__c IS: Variable --></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Please note that the above repayments will change if the interest rate goes up or down. We will notify you in advance of any change to the interest rate and any resulting change to your repayments.</#if></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The repayments outlined above and/or in the Repayment Schedule are indicative and are based on the indicative interest rate, drawdown date and first repayment date set out in this Letter of Sanction.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Your repayments will be re-calculated when your Facility is drawn down based on the prevailing interest rate on that date, the actual drawdown date and your actual first repayment date (which might be different to the date set out above).</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The actual amount of each repayment and the actual repayment dates will be confirmed in your Drawdown Letter, which we will send to you after your Facility is drawn down.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">Clause 3.4 of the General Terms and Conditions explains how we will deal with any balance left unpaid after the last scheduled repayment date.</p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"></#if></p>
</div>
</div>
</div>
</div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">Total Amount Repayable: </span></span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt; vertical-align: top;">
<div style="text-align: justify;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}€<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_TotalAmountRepayable__c}</#list></span></span></div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;"><span style="font-size: 10pt; line-height: 120%; font-family: Helvetica, sans-serif;">Cost of Credit:</span> </span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt; vertical-align: top;">
<div style="text-align: justify;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}€<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_COC__c}</#list></span></span></div>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">APR:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Calibri, sans-serif;"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 13.3333px;">{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}<span style="font-size: 10pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif; color: black;">${AIB_Quote__c.AIB_APR__c}%</#list><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationType__c"NOT="New Funds Sought"}}</span></span></p>
</td>
</tr>
<tr>
<td style="width: 17.3%; border: 1pt solid; padding: 0cm 5.4pt; vertical-align: top;">
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 11pt; font-family: Helvetica, sans-serif;"><strong><span style="font-size: 10.0pt; line-height: 120%; font-family: Helvetica, sans-serif;">Governing Letter of Sanction:</span></strong></p>
</td>
<td style="width: 82.7%; border-top: 1pt solid windowtext; border-right: 1pt solid; border-bottom: 1pt solid; border-image: initial; border-left: none; padding: 0cm 5.4pt;">
<p style="margin: 0cm 0cm 6pt; text-align: justify; line-height: 120%; font-size: 11pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;">For the avoidance of doubt:</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;">a)         prior to the Effective Date of this Facility, this Facility (or the relevant part thereof, if applicable) is governed by the terms of the previous letter(s) of sanction from us to you relating to this Facility; and</span></p>
<p style="margin: 0cm 0cm 6pt; line-height: 120%; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; text-align: justify;"><span style="font-size: 10.0pt; line-height: 120%; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">b)         from the Effective Date of this Facility, this Facility will be governed by the terms of this Letter of Sanction.<span style="font-family: 'Arial Unicode MS', sans-serif; font-size: 13.3333px;"><span style="font-size: 10pt; line-height: 120%; font-family: 'Arial Unicode MS', sans-serif; color: black;"></#if></span></span></span></span></p>
</td>
</tr>
</tbody>
</table>
<p></#if></p>
<p> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  1.       GENERAL PROVISIONS</strong></p>
</td>
</tr>
</tbody>
</table>
<p>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2" LIMIT="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Effective Date</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The Finance Documents will have effect as at and from the Acceptance Date. Subject to the General Terms and Conditions, the Facility will come into effect, at our absolute discretion, on the earlier of:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.384%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.1</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">when all of the Conditions Precedent for the Facility are satisfied (to our satisfaction);</td>
</tr>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.2</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">the first date that we permit drawdown or utilisation of the Facility; or</td>
</tr>
<tr>
<td style="width: 7.06079%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.3</td>
<td style="width: 88.1053%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">such date as we may determine at our absolute discretion (with or without notice to you),</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.9251%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 100%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; 18px; text-align: justify;">
<p><span dir="ltr" role="presentation">(the “</span><span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Effective</span> <span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Date</span><span dir="ltr" role="presentation">” for the Facility) and the amount (if any) of all existing loans, debts </span><span dir="ltr" role="presentation">and liabilities forming part of the Facility will be deemed drawn down/utilised and</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be </span><span dir="ltr" role="presentation">subject to the Finance Documents on the Effective Date for the Facility.</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Joint and Several Liability</strong></span>
<p><span dir="ltr" role="presentation">You hereby agree with us that:</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 84.1972%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.1</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">all agreements, obligations, covenants, undertakings, warranties, representations, </span><span dir="ltr" role="presentation">expressed or implied on the part of the Borrower in the Finance Documents will be </span><span dir="ltr" role="presentation">deemed to be made or undertaken by each of the Borrowers jointly and severally </span><span dir="ltr" role="presentation">and all refe</span><span dir="ltr" role="presentation">rences to the Borrower</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">mean and include each of them or (as the </span><span dir="ltr" role="presentation">case may require) any of them and the act, breach or default of any one Borrower </span><span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be deemed to be the act, breach or default of all of them;</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.2</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">none of the Borrowers will as against the Bank be entitled to any of the rights or remedies legal or equitable of a surety as regards the indebtedness, obligations or liabilities of any of the other of them or be entitled in competition with or priority to the Bank to claim or exercise any of the rights (in the nature of contribution or otherwise) of one joint (or joint and several) debtor against another;</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.3</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">we</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be at liberty to release or discharge any one or more of the Borrowers from </span><span dir="ltr" role="presentation">any liability under the Finance Documents o</span><span dir="ltr" role="presentation">r take any composition from or make </span><span dir="ltr" role="presentation">any other arrangements or variation with any one or more of them without thereby </span><span dir="ltr" role="presentation">releasing or discharging any other or others of them or otherwise prejudicing</span> <span dir="ltr" role="presentation">our </span><span dir="ltr" role="presentation">rights or remedies against any other or others of them; a</span><span dir="ltr" role="presentation">nd</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.4</td>
<td style="width: 95.0104%; font-family: 'Arial Unicode MS', sans-serif; border-style: hidden; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation"><span style="font-size: 10pt;">each of the Borrowers will be bound by the Finance Documents even if any of them intended or expressed to be bound by the Finance Documents is deemed in the future not to be so bound.</span></span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.5</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">the Finance Documents will remain effective notwithstanding any change in the composition of the Partnership whether by death, retirement, addition or otherwise; </span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.6</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">you will notify us if any new partner is admitted to the Partnership. Any new partner will be bound by the Finance Documents as if he were a Borrower under this Letter of Sanction and a signatory hereto and the Borrower undertakes to procure that such new partner executes such documents as we may require in order to reflect this position; and </span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.2.7</td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation">notwithstanding any change in the composition of the Partnership, we shall be entitled to account to the partners for the time being and exercise any right of set off as if there had been no such change.</span></td>
</tr>
<tr>
<td style="width: 7.66894%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 95.0104%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span dir="ltr" role="presentation"> </span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.5637%;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Purpose</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><span dir="ltr" role="presentation">You will only use the Facility for the purpose outlined for the Facility above. We are not required to monitor or verify the application of the Facility and if you fail to comply with this requirement, this will not prejudice any of our rights.</span></p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.4.</strong></td>
<td style="width: 90.9362%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Authority to Debit</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">You irrevocably authorise us to debit, whether by direct debit, or otherwise, any repayment instalment(s) from any accounts you have at with us together with any related fees, charges, expenses and insurance premiums. You agree that we are authorised to debit the full amount of such repayment instalment(s), fees, charges, expenses and insurance premiums from any account(s) maintained by you with us (including your loan account). Where you do not hold an account with us, we may open (and you irrevocably authorise us to open) an account specifically for the purpose of debiting these repayment instalment(s), fees, charges, expenses and insurance premiums and crediting  us or any relevant payee. You agree that we shall be under no liability for damage or loss caused by any omission to make the debits referred to in this clause.</p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.5.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Independent Advice</strong></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p>You confirm that:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 84.0627%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.1</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you are fully aware of the nature of the agreement set out in the Finance Documents and any security or other document that you are a party to or will be entering into in connection with the Finance Documents;</td>
</tr>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.2</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have been advised to take and have been given due opportunity to take separate independent legal advice, financial advice and tax advice on the effect of these documents; and</td>
</tr>
<tr>
<td style="width: 7.25935%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.5.3</td>
<td style="width: 95.8703%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have either (i) taken appropriate legal advice and/or financial advice and/or tax advice or (ii) declined the opportunity to avail of such legal advice and/or financial advice and/or tax advice.</td>
</tr>
</tbody>
</table>
<p></#if>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2" LIMIT="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Partnership"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; helvetica, sans-serif; vertical-align: top;"><strong>1.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Effective Date</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">The Finance Documents will have effect as at and from the Acceptance Date. Subject to the General Terms and Conditions, the Facility will come into effect, at our absolute discretion, on the earlier of:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 82.437%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.1</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">when all of the Conditions Precedent for the Facility are satisfied (to our satisfaction);</td>
</tr>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.2</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">the first date that we permit drawdown or utilisation of the Facility; or</td>
</tr>
<tr>
<td style="width: 7.23501%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.1.3</td>
<td style="width: 86.7466%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">such date as we may determine at our absolute discretion (with or without notice to you),</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.9251%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 100%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; 18px; text-align: justify;">
<p><span dir="ltr" role="presentation">(the “</span><span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Effective</span> <span dir="ltr" style="font-family: Helvetica, sans-serif; font-weight: bold;" role="presentation">Date</span><span dir="ltr" role="presentation">” for the Facility) and the amount (if any) of all existing loans, debts </span><span dir="ltr" role="presentation">and liabilities forming part of the Facility will be deemed drawn down/utilised and</span> <span dir="ltr" role="presentation">will</span> <span dir="ltr" role="presentation">be </span><span dir="ltr" role="presentation">subject to the Finance Documents on the Effective Date for the Facility.</span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.5637%;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Purpose</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;"><span dir="ltr" role="presentation">You will only use the Facility for the purpose outlined for the Facility above. We are not required to monitor or verify the application of the Facility and if you fail to comply with this requirement, this will not prejudice any of our rights.</span></p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.3.</strong></td>
<td style="width: 90.9362%; border-style: hidden; font-size: 10pt; vertical-align: top;"><span style="font-family: Helvetica, sans-serif;"><strong>Authority to Debit</strong></span>
<p style="font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">You irrevocably authorise us to debit, whether by direct debit, or otherwise, any repayment instalment(s) from any accounts you have at with us together with any related fees, charges, expenses and insurance premiums. You agree that we are authorised to debit the full amount of such repayment instalment(s), fees, charges, expenses and insurance premiums from any account(s) maintained by you with us (including your loan account). Where you do not hold an account with us, we may open (and you irrevocably authorise us to open) an account specifically for the purpose of debiting these repayment instalment(s), fees, charges, expenses and insurance premiums and crediting  us or any relevant payee. You agree that we shall be under no liability for damage or loss caused by any omission to make the debits referred to in this clause.</p>
</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>1.4.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Independent Advice</strong></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p>You confirm that:</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you are fully aware of the nature of the agreement set out in the Finance Documents and any security or other document that you are a party to or will be entering into in connection with the Finance Documents;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have been advised to take and have been given due opportunity to take separate independent legal advice, financial advice and tax advice on the effect of these documents; and</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">1.4.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">you have either (i) taken appropriate legal advice and/or financial advice and/or tax advice or (ii) declined the opportunity to avail of such legal advice and/or financial advice and/or tax advice.</td>
</tr>
</tbody>
</table>
<p></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  2.       CONDITIONS PRECEDENT</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}<span style="background-color: #eccafa;">{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} {{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.5</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #eccafa;">ENDIFLIST</span>}}</#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.5</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span>{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #c2e0f4;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: Helvetica, sans-serif;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #f8cac6;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND (2 OR 3 OR 4 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Board Minutes</strong>: provide us with an original extract of board minutes (duly completed) in the form set out in Schedule 2{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #c2e0f4;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}};{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}}</span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 2 AND 3 AND 4 AND 6 AND 7 AND 8"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Sole Trader / Trading As"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Company Limited by Guarantee (CLG)"}}{{FILTER="8"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"NOT="Unlimited Company"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}}</span></span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"><span style="background-color: #eccafa;"></#list></span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us;</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.4</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #c2e0f4;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #843fa1;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;">{{<span style="background-color: #bfedd2;">ENDIF</span>}}</#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section){{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: Helvetica, sans-serif;">The following Conditions Precedent must also be completed to our satisfaction:</#list></#if></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="TRUE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #f8cac6;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}}{{ELSEIFLIST}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the SEPA Direct Debit Mandate enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} <span style="background-color: #eccafa;">{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="TRUE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></#if></span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 5 AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Jurisdiction__c"IS="ROI"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}<span style="background-color: #bfedd2;"><#if A AND B AND C>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="FALSE"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="TRUE"}}{{COND="C"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="FALSE"}} </span></span></p>
<p> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>2</strong><strong>.1.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In order to drawdown on or avail of the Facility under the terms of this Letter of Sanction, you must complete the following Conditions Precedent to our satisfaction:</span></span></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 83.7922%; margin-left: 45px;" border="1">
<tbody>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.1</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><strong style="font-family: Helvetica, sans-serif;">Signed Letter</strong>: return this Letter of Sanction signed and dated by all required signatories (see Borrower Acceptance section);</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.2</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">ensure that the drawdown notice enclosed is completed and return it to us{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}};</#list>{{ELSEIFLIST}}.</#if>{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3" LIMIT="1"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</td>
</tr>
<tr>
<td style="width: 8.08369%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">2.1.3</td>
<td style="width: 94.3278%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">The following Conditions Precedent must also be completed to our satisfa<span style="background-color: #ffffff;">ction:</#list></span></#if></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{IFLIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}{{LIST="AIB_OtherDetails__c" FILTER="1 AND (2 OR 4) AND 3"}}{{FILTER="1"FIELD="RecordType.Name"IS="Condition"}}{{FILTER="2"FIELD="AIB_ConditionType__c"IS="Conditions Precedent"}}{{FILTER="3"FIELD="AIB_IsArchived__c"IS="FALSE"}}{{FILTER="4"FIELD="AIB_ConditionType__c"IS="Pre Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;">{{ENDLIST<span style="background-color: #eccafa;">}}</span></#if></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"><span style="background-color: #bfedd2;"></#if></span></#if></span></p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  3.      SPECIFIC CONDITIONS AND COVENANTS</strong></p>
</td>
</tr>
</tbody>
</table>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;"><#if A>{{COND="A"FIELD=<span style="font-size: 13.3333px;">"LLC_BI__Loan__c.LL</span>C_BI__Account__r.AIB_EntityType__c" NOT="Partnership"}}</span></span> {{IFLIST="AIB_OtherDetails__c" FILTER="(1 OR 2) AND 3"}}{{FILTER="1"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="2"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="3"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}</span></span></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -30px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;"> In addition, you agree and undertake that you will comply with each of the following specific condition(s) and covenants that apply to the Facility:</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{LIST="AIB_OtherDetails__c" FILTER="(3 OR 4) AND 5 AND (6 OR 7)"}}<!-- FILTER: 3 FIELD: AIB_OtherDetails__c.AIB_Type__c IS: Conditions -->{{FILTER="4"FIELD="AIB_OtherDetails__c.AIB_Type__c" IS="Covenants"}}{{FILTER="5"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}{{FILTER="6"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="7"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -15px;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>3.3.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">Where the above specific condition(s) and covenants involve an obligation on you, you agree and undertake that you will comply with them to our satisfaction for so long as you owe us any amount under the Finance Documents or any Security Documents or the Facility is available for utilisation (unless we agree otherwise).</span></span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{ELSEIFLIST}}</span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
</tbody>
</table>
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">{{</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">ENDIFLIST</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">}}{{</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">ELSE</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">}}{{</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">IFLIST</span><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">="AIB_OtherDetails__c" FILTER="(1 OR 2) AND 3"}}</span></span><span style="font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; background-color: #ffffff;">{{FILTER="1"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="2"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}{{FILTER="3"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}} </span></span></p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In addition, you agree and undertake that you will comply with each of the following specific conditions(s) and covenants:</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.1 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will immediately inform us of any change in the constitution of the Partnership,<br role="presentation" />      whether as a result of death, resignation, retirement or expulsion of the Partnership’s<br role="presentation" />          present or future partners or the admission of any new partners; and</span></span></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.2 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will not terminate the Partnership Agreement (if any), or amend it in any manner which<br role="presentation" />   would prejudice our interests under the Finance Documents or any Security<br role="presentation" />         Document.</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;"><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">In addition, you agree and undertake that you will comply with each of the following specific condition(s) and covenants that apply to the Facility:</span></span></td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -10px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 9.91782%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p> </p>
</td>
<td style="width: 88.8434%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p style="text-align: justify;">{{LIST="AIB_OtherDetails__c" FILTER="(3 OR 4) AND 5 AND (6 OR 7)"}}<!-- FILTER: 3 FIELD: AIB_OtherDetails__c.AIB_Type__c IS: Conditions -->{{FILTER="4"FIELD="AIB_OtherDetails__c.AIB_Type__c" IS="Covenants"}}{{FILTER="5"FIELD="AIB_OtherDetails__c.AIB_IsArchived__c" IS="FALSE"}}{{FILTER="6"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="Post Drawdown"}}{{FILTER="7"FIELD="AIB_OtherDetails__c.AIB_ConditionType__c" IS="On Drawdown"}}</p>
<ul>
<li style="text-align: left;">${AIB_OtherDetails__c.AIB_ConditionDescriptionBackend__c}</li>
</ul>
<p style="text-align: justify;"></#list></p>
</td>
</tr>
</tbody>
</table>
<p> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; 10px; margin-top: -15px;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;">
<p><strong>3.4.</strong></p>
</td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">
<p><span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">Where the above specific condition(s) and covenants involve an obligation on you, you agree and undertake that you will comply with them to our satisfaction for so long as you owe us any amount under the Finance Documents or any Security Documents or the Facility is available for utilisation (unless we agree otherwise).</span></span></p>
</td>
</tr>
</tbody>
</table>
<p>{{ELSEIFLIST}}</p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; margin-top: -20px;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You agree and undertake that you will comply with each of the covenants set out in clause 7.11 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"><strong>3.2</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In addition, you agree and undertake that you will comply with each of the following specific conditions(s) and covenants:</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.1 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will immediately inform us of any change in the constitution of the Partnership,<br role="presentation" />      whether as a result of death, resignation, retirement or expulsion of the Partnership’s<br role="presentation" />          present or future partners or the admission of any new partners; and</span></span></td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top; text-align: justify;"> </td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">3.2.2 <span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif;">you will not terminate the Partnership Agreement (if any), or amend it in any manner which<br role="presentation" />   would prejudice our interests under the Finance Documents or any Security<br role="presentation" />         Document.</span></span></td>
</tr>
</tbody>
</table>
<p></#if></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  4.      EARLY REPAYMENT AND ADDITIONAL PAYMENTS</strong></p>
</td>
</tr>
</tbody>
</table>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c == "Fixed"></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10.0pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Arial Unicode MS, sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it or make extra payments towards it at any time and you will not have to pay a Breakage Cost or compensation to us. If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvatica;"> </p>
<p style="font-size: 9pt; font-family: Helvatica;"></#if></p>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Overdrafts/Credit Lines"></h6>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it at any time.  If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvatica;"> </p>
<p style="font-size: 9pt; font-family: Helvatica;"></#if></p>
<h6 class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><#if A><#if LLC_BI__Loan__c.LLC_BI__Pricing_Basis__c == "Variable"></h6>
<table class="center" style="border-collapse: collapse; border-style: hidden; width: 90.6514%;" border="1">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.1.</strong></td>
<td style="width: 99.7984%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">Once you have availed of the Facility, you can repay all amounts outstanding in respect of it at any time.  If you are not sure how much you owe us, contact us and we will let you know.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>4.2.</strong></td>
<td style="width: 99.7984%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You may also make extra payments towards the Facility at any time.</td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif;"></#if></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  5.       FEES, CHARGES AND EXPENSES</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; vertical-align: top;">
<tbody>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Fees, Charges and Expenses Incurred</strong>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">In certain circumstances, you will need to pay for certain fees, charges and expenses (including VAT, where relevant) in relation to the Facility, any security and the operation of accounts. These fees, charges and expenses are set out and/or explained in this Letter of Sanction, in Section VII (General) of the General Terms and Conditions and/or in the current edition of our “Business Fees and Charges” booklet (available in any of our branches and/or on our website).</p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; font-size: 10pt; font-family: Helvetica;">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Solicitors’ Fees Payable by the Borrower</strong>
<div>
<div>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">If a solicitor is acting for us in connection with the Finance Documents and/or any Security Documents, you will<strong> </strong>have to pay our solicitor’s fees as well as your own.</p>
</div>
</div>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden; font-size: 10pt; font-family: Helvetica;">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>5.3.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>Indemnity</strong>
<div>
<div>
<p style="border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">You will<strong> </strong>indemnify us and keep us at all times indemnified against any and all actions, costs, demands, claims, losses or damage which we may suffer in connection with, or as a result of, entering into and/or enforcing the Finance Documents and/or any other document (including any Security Documents) or agreement related to or in connection with your obligations and liabilities under the Finance Documents.</p>
</div>
</div>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  6.       EVENTS OF DEFAULT</strong></p>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="border-collapse: collapse; width: 90.5637%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>6.1.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">There are circumstances under which we can require you to repay the Facility early. These include the happening of any of the events set out in clause 4.2 of the General Terms and Conditions.</td>
</tr>
<tr>
<td style="width: 7.82504%; border-style: hidden; font-size: 10pt; font-family: Helvetica, sans-serif; vertical-align: top;"><strong>6.2.</strong></td>
<td style="width: 90.9361%; border-style: hidden; font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top; text-align: justify;">All of our rights arising out of this section are without prejudice to any other right we may have, howsoever arising.</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table class="center" style="background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: none; width: 90.1575%;">
<tbody>
<tr>
<td style="text-align: left; width: 50%; font-size: 10pt; border-style: hidden; font-family: Helvetica, sans-serif;">
<p style="margin: 0px 0px 0px;"><strong>  7.       CONTACTING US</strong></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p class="format" style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 90.5637%; 164px; border-style: none;" border="1">
<tbody>
<tr>
<td style="width: 99.3775%; 164px; border-style: none;"><span style="font-size: 10pt;">To contact us about the Facility, please write to us at <strong>${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}, ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine4__c}</strong> or call us on <strong>${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}</strong>.  In certain circumstances, we may require you to write to us.  We have indicated where this is the case in these Finance Documents.</span></td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"> </p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Central Credit Register</strong></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; padding-left: 120px;"> </p>
<table style="border-collapse: collapse; width: 90.5637%; border-color: #000000; border-style: solid;" border="1">
<tbody>
<tr>
<td style="width: 100%; font-size: 10pt; font-family: Helvetica, sans-serif; text-align: justify; border-color: #000000; border-style: solid;"><strong>NOTICE: Under the Credit Reporting Act 2013 lenders are required to provide personal and credit information for credit applications and credit agreements of €500 and above to the Central Credit Register. This information will be held on the Central Credit Register and may be used by other lenders when making decisions on your credit applications and credit agreements.</strong></td>
</tr>
</tbody>
</table>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 120px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"> </p>
<p style="margin: 0px 0px; margin-right: 70px; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: justify;">The Central Credit Register is maintained and operated by the Central Bank of Ireland. For information on your rights and duties under the Credit Reporting Act 2013 please refer to the factsheet prepared by the Central Bank of Ireland. This factsheet is available on www.centralcreditregister.ie. Copies can also be obtained at your local AIB branch and on <a href="http://www.aib.ie">www.aib.ie</a>.</p>
<p><div class="mce-pagebreak"></div></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>BANK SIGNATURE</strong></p>
<p class="format" style="font-size: 10pt; font-family: 'Arial Unicode MS', sans-serif; text-align: justify;">We are pleased to offer the Facility to you on the terms and subject to the conditions set out in the Finance Documents.  If you agree to the terms of the Finance Documents, please sign where indicated below and return the signed Letter of Sanction to  us by ${LLC_BI__Loan__c.AIB_SanctionValidityDate__c}  (unless we agree otherwise). This acceptance period is solely for our benefit, and we may waive it at any time (with or without notice to you).</p>
<p class="format" style="font-size: 10pt; font-family: Arial Unicode MS, sans-serif;">Thank you for the opportunity to provide the Facility to you.</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>Signed on behalf of Allied Irish Banks, p.l.c.</strong></p>
<table style="border-collapse: collapse; width: 89.3457%; margin: 0px 60px;" border="1">
<tbody>
<tr style="22px; vertical-align: top;">
<td style="width: 54.0541%; border-style: hidden; text-align: left;">
<p><img style="margin-top: 20px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_Signature" alt="" width="281" height="29" /></p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Maria Hynes</span></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Head of Fulfilment CoE</span></em></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
</td>
<td style="width: 1.66945%; border-style: hidden; vertical-align: top;"> </td>
<td style="width: 77.261%; border-style: hidden; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 72.3184%;" border="1">
<tbody>
<tr>
<td style="width: 100%; border: 1.5px hidden #5a5a5a;"><span style="font-size: 10pt; font-family: Arial Unicode MS, sans-serif;">Date:<span style="text-decoration: underline;">        ${LLC_BI__Loan__c.AIB_CurrentDate__c}        </span></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p><div class="mce-pagebreak"></div></p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.AIB_CCustSignPref__c"IS="Paper Signature"}}{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}} {{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}</p>
<table class="center" style="border-collapse: collapse; margin: 0px; width: 86.5026%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 7.82504%; border-style: hidden; font-size: 9pt; font-family: Helvetica, sans-serif; vertical-align: top;">
<p style="font-family: Helvetica, sans-serif;"><strong>BORROWER ACCEPTANCE</strong></p>
<p style="font-family: Helvetica, sans-serif; font-size: 9pt; text-align: justify;"><strong>By signing below, we confirm that we agree with and accept the terms and conditions of the Finance Documents, copies of which we have received and we undertake to carry out all obligations set out in the Finance Documents.</strong>{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}<span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}</span></p>
<p style="font-family: 'Arial Unicode MS', sans-serif;">                               Signed for and on behalf of <span style="font-size: 9.0pt; line-height: 107%; font-family: Helvetica, sans-serif; font-weight: bold;">${LLC_BI__Legal_Entities__c.AIB_CAName__c} </span>by:</#list></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 89.0672%; 10px; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; 10px; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<br />_______________________________
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 89.0672%; 10px; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; 10px; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<br />_______________________________
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<div class="footer">
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"> </p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;"> </p>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt;">{{ELSEIFLIST}}</p>
<table class="center" style="border-collapse: collapse; width: 86.5026%; border-style: hidden;" border="1">
<tbody>
<tr style="border-style: hidden;">
<td style="width: 100%; border-style: hidden; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; vertical-align: top;">
<p style="font-family: Helvetica, sans-serif;"><strong>BORROWER ACCEPTANCE</strong></p>
<p style="font-family: Helvetica, sans-serif; text-align: justify;"><strong>By signing below, I confirm that I agree with and accept the terms and conditions of the Finance Documents, copies of which I have received and I undertake to carry out all obligations set out in the Finance Documents.</strong></p>
</td>
</tr>
</tbody>
</table>
<span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span>
<table class="center" style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="73px; border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: Arial Unicode MS, sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="28px; border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt;"><span style="font-size: 7pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
</td>
<td style="width: 9.25323%; border-style: none; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif;">
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 1pt; font-family: 'Times New Roman', serif;"> </p>
<p><img style="margin-top: -50px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_BlankDate" width="190" height="30" /></p>
</td>
</tr>
</tbody>
</table>
<p></#list> </#if></#if></p>
<p> </p>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt;"><strong>SCHEDULE 1</strong></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt; vertical-align: top;"><strong>DEFINITIONS AND INTERPRETATION</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>1.   DEFINITIONS</strong></p>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; text-align: justify;">In this Letter of Sanction, where the below reference appears unless the context admits or requires otherwise:</p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>"Acceptance Date" </strong><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the date the Finance Documents are accepted by </span><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">you</span><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>“AIB Group”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the Bank, its subsidiaries (including, for the avoidance of doubt, EBS d.a.c. and Haven Mortgages Limited) and affiliates and their respective parent and subsidiary companies;<br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Bank”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means Allied Irish Banks, p.l.c. and will include its successors, affiliates and assignees;<br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Borrower”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term at the beginning of this Letter of Sanction and where there is more than one borrower, use of the term “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Borrower</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Borrowers</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>You</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> ” or “</span> <span style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>you</strong></span> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">” will be deemed to refer to all such borrowers and will include its/their successors and permitted assignees;</span> </span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Conditions Precedent” </strong>means any conditions/requirements that must be completed to the Bank’s satisfaction prior to drawdown of any Facility and as set out in the Conditions Precedent section of this Letter of Sanction;<span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"><br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-size: 10.0pt; line-height: 107%; font-family: Arial, sans-serif;"><strong>“Drawdown Letter”</strong> <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means a letter sent to you by the Bank after your Term Loan Facility is drawn down including details of (i) the actual interest rate; (ii) the actual repayment amounts; (iii) the actual repayment dates; (iv) the total amount repayable; (v) the Cost of Credit; and (vi) the APR, that will apply to the Facility. <br /></span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Effective Date</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term in clause 1.1  of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Facility</strong>” means the banking facility as more particularly set out in the “Facility” section of this Letter of Sanction agreed to be made available to, and/or provided to renew/replace/restructure a facility/certain facilities (or part thereof, if applicable) on behalf of the Borrower by the Bank pursuant to this Letter of Sanction and <strong>Facility </strong>will mean any one of them as the context will require;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Guarantor</strong>” means the person(s) (if any) to provide guarantees in accordance with the provisions of the Security section (if any) of this Letter of Sanction, and (where relevant) the personal representatives, executors, administrators, successors and permitted assignees of such persons having any liability pursuant to the terms of such guarantee(s) or indemnity/ies as are given by them; </span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Letter of Sanction</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means this agreement between the Bank and the Borrower (including the schedules of this Letter of Sanction), as amended or confirmed from time to time;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Maximum Amount</strong>”<span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;"> means in relation to any Facility, the amount specified in the Maximum Amount clause for that Facility in the “Facility“ section of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Partnership</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the partnership referred to at the beginning of this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Partnership Agreement</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the partnership agreement entered into by the individual partners in the Partnership as the same may be amended and supplemented from time to time (if any);</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Repayment Schedule</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means the document provided to you with this Letter of Sanction setting out the indicative repayment amounts and indicative repayment dates that will apply to your Term Loan Facility as calculated based on the indicative drawdown date set out in this Letter of Sanction;</span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Secured Asset</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">means any property, asset or undertaking which is the subject of any security created or intended to be created by any Security Documents; </span></span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>Security Documents</strong>” means any of the document(s) listed in the Security section (if any) of this Letter of Sanction and all documents ancillary thereto, in a form and substance satisfactory to the Bank and its legal advisors including but not limited to powers of attorney, certificates of title, board minutes, letters of consent and authorisation, stock transfer forms, title deeds, share certificates and life assurance policies;</span></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 13.3333px;">“<strong>You</strong>” or “<strong>you</strong>” <span style="font-size: 10.0pt; line-height: 107%; font-family: Arial Unicode MS, sans-serif;">has the meaning given to that term in the definition of Borrower above.</span></span></p>
<p style="padding-left: 80px; font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>2.   INTERPRETATION</strong></p>
<p class="format" style="font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"><span dir="ltr" role="presentation">Unle</span><span dir="ltr" role="presentation">ss a contradictory indication appears, a reference in this Letter of Sanction to:</span></p>
<table class="center" style="border-collapse: collapse; width: 100.188%;" border="1">
<tbody>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">a.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">a <span style="font-family: Arial, sans-serif; font-size: 13.3333px;">person </span>includes any individual, firm, company, corporation, government, state or agency of a state or other unincorporated body or association (including a partnership, trust, fund, joint venture or consortium) or any other entity (whether or not having a separate legal personality);</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">b.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a paragraph, clause, sub-clause, section, sub-section or schedule of this Letter of Sanction is for ease of reference only and will not affect the construction or interpretation thereof;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">c.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a provision of law includes any amendment or re-enactment thereof and any subordinate legislation made under it. Any reference to any statutory provision, or to any order or regulation includes that provision, order or regulation as extended, modified, replaced and/or re-enacted from time to time (whether before or after the date of the Letter of Sanction) and all regulations and orders from time to time made thereunder or deriving validity therefrom;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">d.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to “including” and “in particular” will not be construed restrictively but will be construed as being illustrative and mean “including without prejudice to the generality of the foregoing and without limitation” and “in particular, but without limitation”;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">e.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any paragraph, clause, sub-clause, section or sub-section of the General Terms and Conditions includes any extension, modification, or replacement thereof including from time to time where the specific paragraph, clause, sub-clause, section or sub-section reference is re-numbered;</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">f.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a previous letter of sanction includes any extension, modification and/or replacement thereof; and</td>
</tr>
<tr>
<td style="width: 6.73606%; vertical-align: top; font-family: Helvetica, sans-serif; font-size: 10pt; border-style: hidden;">g.</td>
<td style="width: 102.985%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;">any reference to a month will mean a calendar month and any references to a day will mean a period of twenty-four consecutive hours.</td>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p><div class="mce-pagebreak"></div></p>
<p><#if A><#if LLC_BI__Loan__c.AIB_CCustSignPref__c == "Paper Signature">{{IFLIST="LLC_BI__Legal_Entities__c" LIMIT="1" FILTER="(1 OR 2) AND (3 OR 4 OR 5 OR 6 OR 7)"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trustee"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="7"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}</p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt;"><strong>SCHEDULE 2</strong></p>
<p style="text-align: center; font-family: Helvetica, sans-serif; font-size: 14pt; vertical-align: top;"><strong>EXTRACT OF BOARD MINUTES</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Certified extract from minutes of a duly convened, constituted meeting of the Board of Director(s) of</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>{{LIST="LLC_BI__Legal_Entities__c" LIMIT="1" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</#list> (the "Company"), held on the ___ day of ___________20___</strong></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>1.  <span dir="ltr" role="presentation">Quorum &amp; Director(s)’</span> <span dir="ltr" role="presentation">Declarations</span></strong></p>
<p style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span id="page3R_mcid14"><span dir="ltr" role="presentation">The Chair</span><span dir="ltr" role="presentation">person</span> <span dir="ltr" role="presentation">noted that the meeting had been properly convened and that a quorum was</span><br role="presentation" /><span dir="ltr" role="presentation">present at the meeting comprising director(s) entitled to vote on the proposed resolutions and the</span></span><span id="page3R_mcid15"><br role="presentation" /><span dir="ltr" role="presentation">Chair</span><span dir="ltr" role="presentation">person</span></span><span id="page3R_mcid16"> <span dir="ltr" role="presentation">noted, for the purposes of the Companies Act</span> <span dir="ltr" role="presentation">2014:</span> <span dir="ltr" role="presentation">(i) that each of the director(s)</span><br role="presentation" /><span dir="ltr" role="presentation">present had disclosed at the meeting the manner (if any) in which he or she is, directly or indirectly,</span><br role="presentation" /><span dir="ltr" role="presentation">interested in the business to be transacted at the meeting, whether as a director of any company</span><br role="presentation" /><span dir="ltr" role="presentation">which is party</span> <span dir="ltr" role="presentation">to such business or otherwise, in accordance with section 231 of the Companies Act</span><br role="presentation" /><span dir="ltr" role="presentation">2014; (ii) that at least one of the director(s) of the Company is resident in the European Economic</span><br role="presentation" /><span dir="ltr" role="presentation">Area; (iii) that each director of the Company present did not individuall</span><span dir="ltr" role="presentation">y hold more than 25</span><br role="presentation" /><span dir="ltr" role="presentation">directorships and was therefore eligible to vote on all board resolutions brought before the meeting;</span><br role="presentation" /><span dir="ltr" role="presentation">(iv) that no person acting as a director of the Company is a body corporate or an unincorporated</span><br role="presentation" /><span dir="ltr" role="presentation">body of persons; (v) that each person</span> <span dir="ltr" role="presentation">appointed as director of the Company or, in the case of an</span><br role="presentation" /><span dir="ltr" role="presentation">individual, secretary of the Company, has attained the age of 18 years and had attained the age of</span><br role="presentation" /><span dir="ltr" role="presentation">18 years at the time of their appointment; (vi) that no person acting as director or secretary of</span> <span dir="ltr" role="presentation">the</span><br role="presentation" /><span dir="ltr" role="presentation">Company,</span> <span dir="ltr" role="presentation">or</span> <span dir="ltr" role="presentation">directly or</span> <span dir="ltr" role="presentation">indirectly</span> <span dir="ltr" role="presentation">taking</span> <span dir="ltr" role="presentation">part</span> <span dir="ltr" role="presentation">or</span> <span dir="ltr" role="presentation">concerned</span> <span dir="ltr" role="presentation">in</span> <span dir="ltr" role="presentation">the</span> <span dir="ltr" role="presentation">promotion,</span> <span dir="ltr" role="presentation">formation</span> <span dir="ltr" role="presentation">or</span><br role="presentation" /><span dir="ltr" role="presentation">management of the Company, is an undischarged bankrupt; and (vii) that no person who is the</span><br role="presentation" /><span dir="ltr" role="presentation">subject of a declaration under section 819 or sections 839</span><span dir="ltr" role="presentation">-</span><span dir="ltr" role="presentation">846 of th</span><span dir="ltr" role="presentation">e Companies Act 2014 is</span><br role="presentation" /><span dir="ltr" role="presentation">appointed or acts in any way, directly or indirectly, as a director or secretary of the Company.</span></span></p>
<p class="format" style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>2.  Purpose of the Meeting</strong></p>
<p style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span dir="ltr" role="presentation"> The Chairperson reported that Allied Irish Banks, p.l.c. (the “<span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>Bank</strong></span>”) had made an offer to make a facility available to the Company upon the terms and subject to the conditions set out in a letter of sanction dated ${LLC_BI__Loan__c.AIB_CurrentDate__c} (including schedules) and the Bank’s General Terms and Conditions governing Business Lending as may be amended from time to time (the <span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>“Letter of Sanction</strong></span>”), a copy of which was tabled at the meeting.</span></p>
<p style="font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>3.  Approvals</strong></p>
<p class="format" style="padding-left: 20px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt; text-align: justify;"><span dir="ltr" role="presentation">The director(s) carefully considered the terms of the Letter of Sanction and in particular, the rights</span><br role="presentation" /><span dir="ltr" role="presentation">and obligation</span><span dir="ltr" role="presentation">s of the Company, following which</span> <span dir="ltr" role="presentation"><span style="font-family: Helvetica, sans-serif; font-size: 10pt; text-align: justify;"><strong>IT WAS RESOLVED</strong></span></span> <span dir="ltr" role="presentation">that:</span></p>
<table class="center" style="border-collapse: collapse; width: 100.044%;" border="1">
<tbody>
<tr>
<td style="width: 7.05003%; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden;">      3.1.</td>
<td style="width: 91.7111%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;"><span dir="ltr" role="presentation">it was for the commercial advantage and in the best interests of the Company to approve the entry into and the performance by the Company of its obligations under the Letter of Sanction (and such other authorities, documents and instructions required to be signed by the Company in connection with the Letter of Sanction and the facility/facilities) and the signing, delivery and performance of the Letter of Sanction (and any such authorities, documents and instructions required to be signed by the Company in connection with the Letter of Sanction and the facility/facilities) be hereby ratified (where already signed on behalf of the Company) and approved (where not already signed on behalf of the Company); and</span></td>
</tr>
<tr>
<td style="width: 7.05003%; vertical-align: top; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden;">      3.2.</td>
<td style="width: 91.7111%; font-family: 'Arial Unicode MS', sans-serif; font-size: 10pt; border-style: hidden; text-align: justify;"><span dir="ltr" role="presentation">any director is authorised to execute the Letter of Sanction (and any other authorities, documents and instructions required in connection with the Letter of Sanction and the facility/facilities) under hand, electronically, or if required, under seal in accordance with the Company’s constitution and the execution of the Letter of Sanction by any director (where the Letter of Sanction has already been signed on behalf of the Company) is hereby ratified.</span></td>
</tr>
</tbody>
</table>
<p style="padding-left: 20px; font-size: 10pt; text-align: justify;"><strong><span dir="ltr" role="presentation">I hereby certify that the above is a true extract from the minutes of the meeting of the board of </span></strong><strong><span dir="ltr" role="presentation">director(s) of the Company duly convened, constituted and held on the date mentioned above </span></strong><strong><span dir="ltr" role="presentation">and</span> <span dir="ltr" role="presentation">that the above resolutions were passed in accordance with and comply with the Company’s </span></strong><strong><span dir="ltr" role="presentation">constitution.</span></strong></p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong><span dir="ltr" role="presentation">Dated this ___day of ___________20___</span></strong></p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"> </p>
<p style="padding-left: 20px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>Signed           _______________________________</strong></p>
<p style="padding-left: 40px; font-family: Helvetica, sans-serif; font-size: 10pt;"><strong>                   Chairperson of Meeting</strong></p>
<p> </p>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0; text-align: center; left: 0;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: Arial Unicode MS, sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p style="padding-left: 80px;"></#if></#if></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 41px; font-size: 9pt; border-style: none; font-family: Helvetica; text-align: left;">
<p><span style="font-family: Helvetica, sans-serif; font-weight: bold;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</span></p>
<p style="text-align: center;"><strong><span style="font-family: Helvetica, sans-serif; font-size: 14pt;">Repayment Schedule</span></strong></p>
</th>
<th style="width: 9.59025%; font-size: 9pt; height: 41px; border-style: none; text-align: left;"> </th>
<th style="width: 4.79512%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.39756%; font-size: 9pt; border-style: none; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p>{{LIST="AIB_Quote__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Quote__c.AIB_IsActive__c"IS="True"}}</p>
<table class="Center" style="margin-left: 40.85pt; width: 83.9461%;" border="2px solid black;" cellspacing="0" cellpadding="0">
<tbody>
<tr style="22px; background: #e6e6e6; font-family: Helvetica, sans-serif;">
<td style="width: 17.4065%;"><span style="font-size: 10pt;"><strong>Date</strong></span></td>
<td style="width: 21.8842%;"><span style="font-size: 10pt;"><strong>Total Repayment</strong></span></td>
<td style="width: 20.6629%;"><span style="font-size: 10pt;"><strong>Principal Amount</strong></span></td>
<td style="width: 20.3916%;"><span style="font-size: 10pt;"><strong>Interest Amount</strong></span></td>
<td style="width: 27.1051%;"><span style="font-size: 10pt;"><strong>Balance (Excluding any arrears)</strong></span></td>
</tr>
<tr style="156px; font-family: Arial Unicode MS, sans-serif;">
<td style="width: 17.4065%;"><span style="font-size: 10pt;">{{LIST="AIB_RemainingRepaymentSchedule__c" <span style="font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_RemainingRepaymentSchedule__c.AIB_Date__c ASC"</span>}}${AIB_RemainingRepaymentSchedule__c.AIB_Date__c}</span></td>
<td style="width: 21.8842%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€</span>${AIB_RemainingRepaymentSchedule__c.AIB_TotalAmount__c}</span></td>
<td style="width: 20.6629%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">${AIB_RemainingRepaymentSchedule__c.AIB_PrincipalBalanceCurrency__c}</span>${AIB_RemainingRepaymentSchedule__c.AIB_PrincipalAmount__c}</span></td>
<td style="width: 20.3916%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€</span>${AIB_RemainingRepaymentSchedule__c.AIB_InterestAmount__c}</span></td>
<td style="width: 27.1051%;"><span style="font-size: 10pt;"><span style="font-size: 10pt; line-120%; font-family: Helvetica, sans-serif;">€${AIB_RemainingRepaymentSchedule__c.AIB_OutstandingPositiveBalance__c}</span></#list></span></td>
</tr>
</tbody>
</table>
<p></#list></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p style="padding-left: 80px; font-family: Arial Unicode MS, sans-serif; font-size: 10pt;"><span id="page3R_mcid14"></span></p>
<p><div class="mce-pagebreak"></div></p>
<p><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "TRUE"></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 80.9705%; height: 29px; font-size: 7pt; border-style: hidden; text-align: left;">
<p style="font-family: Helvetica, sans-serif;">          Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</p>
<p style="text-align: center; font-size: 14pt; font-family: Helvetica, sans-serif;"><strong>                  AIB SEPA Direct Debit Mandate</strong><br /><strong>                  Instruction to your Bank to pay Direct Debits</strong></p>
<p style="text-align: center; font-size: 7pt; font-family: Helvetica, sans-serif;"><strong>                              This mandate form will send instructions to your bank to debit your account for your loan repayment only</strong><br /><strong>                              Creditor Name: Allied Irish Banks, p.l.c. Creditor Identifier: IE44SDD363087</strong><br /><strong>                              Creditor Address: 10 Molesworth Street, Dublin 2.</strong></p>
</th>
<th style="width: 15.2503%; font-size: 9pt; border-style: hidden; text-align: left; height: 29px;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688147453000/AIB_Logo" width="112" height="112" /></strong></th>
<th style="width: 2.1487%; font-size: 9pt; border-style: hidden; text-align: left;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: 'Arial Unicode MS, sans-serif';"><span style="font-size: 9.0pt; font-family: Arial Unicode MS, sans-serif;">By signing this mandate form, you authorise</span></p>
<ol class="format" style="list-style-type: lower-alpha;">
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9.0pt; font-family: Arial Unicode MS, sans-serif;">Allied Irish Banks, p.l.c to send instructions to your bank to debit your account; and</span></li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9.0pt; font-family: Arial Unicode MS, sans-serif;">Your bank to debit your account in accordance with the instructions from Allied Irish Banks, p.l.c.</span></li>
</ol>
<p class="format" style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">As part of your rights, you are entitled to a refund from your bank under the terms and conditions of your agreement with your bank. A refund must be claimed within eight weeks starting from the date on which your account was debited. Your rights are explained in a statement that you can obtain from your bank.</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;">Type of payment:              Recurring         <span style="margin-top: 500px;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145892000/AIB_SME_TickBox" alt="" width="18" height="18" /></span></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 80%;"><strong>PAYER DETAILS</strong></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 80%;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><#if C>{{COND="C" FIELD="LLC_BI__Loan__c.AIB_IBANRepayments__c" IS=""}}Please provide your IBAN details below<span style="font-family: Helvetica, sans-serif; font-size: 7pt;"></#if></span> </span></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 80%;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">IBAN (International Bank Account Number)</span></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><span style="font-size: 9.0pt; font-family: Arial Unicode MS, sans-serif;"><#if A>{{COND="A" FIELD="LLC_BI__Loan__c.<span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">AIB_IBANRepayments__c</span>" NOT=""}} ${LLC_BI__Loan__c.AIB_IBANRepayments__c}<span style="font-family: Helvetica, sans-serif; font-size: 7pt;"></#if><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><#if B>{{COND="B" FIELD="LLC_BI__Loan__c.AIB_IBANRepayments__c" IS=""}} ___________________________________________       <img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1690566166000/AIB_SME_SingleArrow" alt="" width="135" height="19" /></#if></span></span></span></p>
<p><#if A>{{COND="A" FIELD="LLC_BI__Loan__c.AIB_DDRepaymentAccountRepayments__c"IS="Borrower Internal Account (via AIB Account selection)"}}</p>
<table style="border-collapse: collapse; width: 100%; border-style: hidden;">
<tbody>
<tr>
<td style="border-style: hidden; width: 33.1015%; vertical-align: top;">
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 1mm;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;">Name of Paying Account Holder(s):</span></p>
</td>
<td style="border-style: hidden; width: 69.8985%;">
<table style="border-collapse: collapse; width: 100%; border-style: hidden;">
<tbody>
<tr>
<td style="border-style: hidden; width: 100%; 79px; text-align: left; vertical-align: top;">
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 1mm;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;">{{LIST="LLC_BI__Legal_Entities__c"FILTER="A"ORDER="AIB_Sequence__c ASC"}} {{FILTER="A" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Salutation}  ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}</#list></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p></#if></p>
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 70%; color: white;"><#if A OR B OR C>{{COND="A" FIELD="LLC_BI__Loan__c.AIB_DDRepaymentAccountRepayments__c"IS="Borrower External Account (Manual input)"}}{{COND="B" FIELD="LLC_BI__Loan__c.AIB_DDRepaymentAccountRepayments__c"IS="Borrower Internal Account (Manual input)"}}{{COND="C" FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionRepayments__c"IS=True}}{{LIST="LLC_BI__Legal_Entities__c"FILTER="A"ORDER="AIB_Sequence__c ASC"LIMIT="1"}}{{FILTER="A" FIELD="LLC_BI__Legal_Entities__c.AIB_DDMandateSigner__c"IS="True"}}</p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 80%;"><strong>PLEASE COMPLETE ALL FIELDS BELOW</strong></p>
<table style="border-collapse: collapse; width: 100%; border-style: hidden; height: 54px;">
<tbody>
<tr style="height: 30px;">
<td style="border-style: hidden; height: 30px; text-align: left;">
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 1mm;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;">Name of Paying Account Holder(s):</span></p>
</td>
<td style="border-style: hidden; height: 30px; text-align: center;">________________________________</td>
<td style="border-style: hidden; width: 20%; height: 30px; text-align: right;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><span style="font-family: Helvetica, sans-serif; font-size: 7pt;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1690566166000/AIB_SME_SingleArrow" alt="" width="135" height="19" /></span></span></td>
</tr>
<tr style="height: 24px;">
<td style="border-style: hidden; width: 32%; height: 24px;">
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 1mm;"><span style="font-size: 10pt; font-family: Helvetica, sans-serif;"> </span></p>
</td>
<td style="border-style: hidden; width: 48%; height: 24px; text-align: center;">________________________________</td>
<td style="border-style: hidden; text-align: right; width: 20.0271%; height: 24px;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><span style="font-family: Helvetica, sans-serif; font-size: 7pt;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1690566166000/AIB_SME_SingleArrow" alt="" width="135" height="19" /></span></span></td>
</tr>
</tbody>
</table>
<p style="font-size: 10pt; font-family: Helvetica, sans-serif; line-height: 70%; color: white;"></#list></#if></p>
<p class="format" style="font-size: 10pt; font-family: Helvetica, sans-serif;"><strong>SIGNATURES</strong><span style="font-size: 10pt;"><#if B><#if LLC_BI__Loan__c.AIB_CCustSignPref__c == "Paper Signature">{{LIST="LLC_BI__Legal_Entities__c" ORDER="LLC_BI__Legal_Entities__c.AIB_Sequence__c ASC }}{{FILTER="A" FIELD="LLC_BI__Legal_Entities__c.AIB_DDMandateSigner__c"IS="TRUE}}</span></p>
<table class="center" style="border-collapse: collapse; width: 92.5911%; font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt;" border="1">
<tbody>
<tr>
<td style="width: 11.5892%; border-style: hidden;"><img style="font-family: Arial Unicode MS, sans-serif; font-size: 18pt; text-indent: -48px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></td>
<td style="width: 44.6242%; border-style: hidden;">     __________________________________ </td>
<td style="width: 3.94736%; border-style: hidden;"> </td>
<td style="width: 73.4052%; border-style: hidden;">Date:        ___/____/______ </td>
</tr>
</tbody>
</table>
<p class="format"><span style="font-family: Arial Unicode MS, sans-serif; font-size: 7pt; line-height: 80%;"></#list></span><span style="font-family: Helvetica, sans-serif; font-size: 7pt;"></#if></span></p>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none;" border="1">
<tbody>
<tr>
<td style="width: 99.3775%; border-style: none;">
<p class="format" style="line-height: 80%; font-size: 10pt; font-family: Helvetica, serif; text-align: center;"><strong><span style="font-family: Helvetica, sans-serif;">         Not part of the SEPA Direct Debit Mandate</span></strong></p>
<p class="format" style="font-size: 9pt; font-family: Helvetica, serif; text-align: left; line-height: 80%;"><strong><span style="font-size: 9pt; font-family: Helvetica, sans-serif;">Note:</span></strong></p>
<ul class="format">
<li style="font-size: 9pt; font-family: 'Arial Unicode MS', serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">You will be notified of your Unique Mandate Reference (UMR) prior to your first direct debit payment.</span></li>
<li style="font-size: 9pt; font-family: 'Arial Unicode MS', serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">You must inform Allied Irish Banks, p.l.c. in writing if you wish to cancel this direct debit instruction. </span></li>
<li style="font-size: 9pt; font-family: 'Arial Unicode MS', serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Banks may decline to accept instructions to pay direct debits on certain types of accounts.</span></li>
</ul>
</td>
</tr>
</tbody>
</table>
<p>{{LIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2" ORDER="LLC_BI__Legal_Entities__c.AIB_Sequence__c DESC" LIMIT="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_DDMandateSigner__c"IS="TRUE"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}<#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c" GREATER="1"}}<div class="mce-pagebreak"></div>{{ELSE}}</p>
<div class="footer" style="margin-top: -35px; page-break-before: always;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p></#if></#list></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></#if><span style="background-color: #eccafa;"><#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}} {{COND="B"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="False"}}{{IFLIST="AIB_Drawdown__c" FILTER="1"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownGenerationCriteria__c "IS="True"}}</span></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 21px; font-size: 9pt; border-style: hidden; text-align: left; font-family: Helvetica, sans-serif; font-weight: bold;">
<p>       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</p>
<p style="text-align: center;"><span style="font-size: 14pt;">Drawdown Notice</span></p>
<p style="text-align: center;"> </p>
</th>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; border: none; width: 101.127%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: hidden;">
<td style="width: 68.6829%; border: 1pt hidden;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">To:          Allied Irish Bank, p.l.c.(the "Bank")</span></td>
<td style="width: 42.6435%; border: 1.25px hidden #000000;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; float: right;">${LLC_BI__Loan__c.AIB_CurrentDate__c}</span></td>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; border: none; width: 79.3011%; padding-top: 0px; padding-bottom: 0px;">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: none;">
<td style="width: 9.85632%; border-width: 0px; vertical-align: top; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="color: #000000; background-color: #ffffff; font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt;">From:</span></p>
</td>
<td style="width: 142.192%; border-width: 0px; border-image: initial; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"> {{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}}</span>{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-align: left;"><span style="font-size: 12px; font-family: Helvetica, sans-serif;"><!--SME1-9078 IMPACT-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}<!-- FILTER: 2 FIELD: LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c IS: Borrower -->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="2"}}{{FILTER="2" FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}(together, the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>")</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if></#if></span></p>
<p><span style="font-size: 9pt; font-family: Helvetica, sans-serif;"><strong>Letter of Sanction dated ${LLC_BI__Loan__c.AIB_CurrentDate__c} (the "Letter of Sanction")</strong></span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">1. We wish to make a drawing under the Letter of Sanction as follows: </span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Amount:                                     €${LLC_BI__Loan__c.AIB_FacilityApprovalAmount__c}</span></li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; color: white;"> </li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Destination Account:                  _____________________________________ <span style="font-family: Helvetica, sans-serif;"><strong>IBAN (International Bank Account Number)</strong></span></span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><strong>                                                               </strong>_____________________________________<strong> <span style="font-family: Helvetica, sans-serif;"><strong>BIC (Bank Identifier Code)</strong></span></strong></span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Account name:                           _____________________________________</span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">2. We confirm that all of the representations and warranties set out in clause 7.10 of the General Terms and Conditions are              true and accurate on the date of this notice as if made on such date.</span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">3. We acknowledge that the Bank may require notice of drawdown.</span></p>
<table style="border-collapse: collapse; border: none;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 17.3%; border-width: 1pt; border-image: initial; border-style: none;" valign="top">
<p><span style="font-size: 8pt;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">Signed:</span></span> </span><span style="font-size: 8pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.AIB_CCustSignPref__c"IS="Paper Signature"}}{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}} {{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}} </span><span style="font-size: 8pt;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}                      </span><span style="font-size: 9pt;">Signed for and on behalf of <span style="font-weight: bold;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span> by:</#list>{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141; page-break-inside: avoid;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<p>_______________________________</p>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list>{{ELSEIFLIST}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141; page-break-inside: avoid;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;"><span style="font-size: 7pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list> </#if></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div><span style="font-size: 8pt;"><span style="background-color: #eccafa;"></#if></span></#if></span><span style="background-color: #bfedd2;"><#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="True"}} {{COND="B"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="False"}}</span></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 21px; font-size: 9pt; border-style: hidden; text-align: left; font-family: Helvetica, sans-serif; font-weight: bold;">
<p>       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</p>
<p style="text-align: center;"><span style="font-size: 14pt;">Drawdown Notice</span></p>
<p style="text-align: center;"> </p>
</th>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; border: none; width: 101.127%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: hidden;">
<td style="width: 68.6829%; border: 1pt hidden;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">To:          Allied Irish Bank, p.l.c.(the "Bank")</span></td>
<td style="width: 42.6435%; border: 1.25px hidden #000000;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; float: right;">${LLC_BI__Loan__c.AIB_CurrentDate__c}</span></td>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; border: none; width: 79.3011%; padding-top: 0px; padding-bottom: 0px;">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: none;">
<td style="width: 9.85632%; border-width: 0px; vertical-align: top; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="color: #000000; background-color: #ffffff; font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt;">From:</span></p>
</td>
<td style="width: 142.192%; border-width: 0px; border-image: initial; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"> {{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}}</span>{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-align: left;"><span style="font-size: 12px; font-family: Helvetica, sans-serif;"><!--SME1-9078 IMPACT-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}<!-- FILTER: 2 FIELD: LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c IS: Borrower -->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="2"}}{{FILTER="2" FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}(together, the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>")</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if></#if></span></p>
<p><span style="font-size: 9pt; font-family: Helvetica, sans-serif;"><strong>Letter of Sanction dated ${LLC_BI__Loan__c.AIB_CurrentDate__c} (the "Letter of Sanction")</strong></span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">1. We wish to make a drawing under the Letter of Sanction as follows: </span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Amount:                                     €${LLC_BI__Loan__c.AIB_FacilityApprovalAmount__c}</span></li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; color: white;"> </li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Destination Account:                  _____________________________________ <span style="font-family: Helvetica, sans-serif;"><strong>IBAN (International Bank Account Number)</strong></span></span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><strong>                                                               </strong>_____________________________________<strong> <span style="font-family: Helvetica, sans-serif;"><strong>BIC (Bank Identifier Code)</strong></span></strong></span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Account name:                           _____________________________________</span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">2. We confirm that all of the representations and warranties set out in clause 7.10 of the General Terms and Conditions are              true and accurate on the date of this notice as if made on such date.</span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">3. We acknowledge that the Bank may require notice of drawdown.</span></p>
<table style="border-collapse: collapse; border: none;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 17.3%; border-width: 1pt; border-image: initial; border-style: none;" valign="top">
<p><span style="font-size: 8pt;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">Signed:</span></span> </span><span style="font-size: 8pt;"><!--SME1-9078-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.AIB_CCustSignPref__c"IS="Paper Signature"}}{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}} {{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}} </span><span style="font-size: 8pt;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}                      </span><span style="font-size: 9pt;">Signed for and on behalf of <span style="font-weight: bold;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span> by:</#list>{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<p>_______________________________</p>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list>{{ELSEIFLIST}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141; page-break-inside: avoid;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;"><span style="font-size: 7pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list> </#if></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div><span style="font-size: 8pt;"></#if></span><span style="background-color: #fbeeb8;"><#if A AND B>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_IsSplitDisbursal__c"IS="True"}}{{COND="B"FIELD="LLC_BI__Loan__c.AIB_TobeProvidedPostDecisionDrawdown__c"IS="False"}}{{IFLIST="AIB_Drawdown__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Manual"}}{{FILTER="2"FIELD="AIB_Drawdown__c.AIB_BeneficiaryAccountDrawdown__c"NOT="Borrower Internal Account (via AIB Account selection)"}}</span></p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica; border: hidden;">
<tbody>
<tr>
<th style="width: 99.3234%; height: 21px; font-size: 9pt; border-style: hidden; text-align: left; font-family: Helvetica, sans-serif; font-weight: bold;">
<p>       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</p>
<p style="text-align: center;"><span style="font-size: 14pt;">Drawdown Notice</span></p>
<p style="text-align: center;"> </p>
</th>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; border: none; width: 101.127%;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: hidden;">
<td style="width: 68.6829%; border: 1pt hidden;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">To:          Allied Irish Bank, p.l.c.(the "Bank")</span></td>
<td style="width: 42.6435%; border: 1.25px hidden #000000;" valign="top"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; float: right;">${LLC_BI__Loan__c.AIB_CurrentDate__c}</span></td>
</tr>
</tbody>
</table>
<table style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; border: none; width: 79.3011%; padding-top: 0px; padding-bottom: 0px;">
<tbody>
<tr style="background-color: #ffffff; border-color: #ffffff; border-style: none;">
<td style="width: 9.85632%; border-width: 0px; vertical-align: top; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="color: #000000; background-color: #ffffff; font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt;">From:</span></p>
</td>
<td style="width: 142.192%; border-width: 0px; border-image: initial; border-style: none;">
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"> {{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}} ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Designated Activity Company (DAC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Sole Trader / Trading As"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.<span style="font-family: 'Arial Unicode MS', sans-serif;"><span style="color: #000000; background-color: #ffffff;">LLC_BI__Loan__r.LLC_BI__Account__r.AIB_EntityType__c</span></span>"IS="Unlimited Company"}}</span>{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">ORDER="AIB_Sequence__c ASC"</span> FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;">${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}</span></p>
<p style="margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="margin: 0px 0px 0px; line-height: 100%;"><span style="font-size: 9pt;"></#list></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-align: left;"><span style="font-size: 12px; font-family: Helvetica, sans-serif;"><!--SME1-9078 IMPACT-->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}<!-- FILTER: 2 FIELD: LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c IS: Borrower -->{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1 AND 2"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="2"}}{{FILTER="2" FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="TRUE"}}(together, the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>")</#if>{{ELSEIFLIST}}(the "<strong>Borrower</strong>"{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} trading as{{LIST="LLC_BI__Legal_Entities__c" FILTER="2"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Trading As"}} ${LLC_BI__Legal_Entities__c.LLC_BI__Account__r.Name}).</#list>{{ELSEIFLIST}}).</#if></#if></span></p>
<p><span style="font-size: 9pt; font-family: Helvetica, sans-serif;"><strong>Letter of Sanction dated ${LLC_BI__Loan__c.AIB_CurrentDate__c} (the "Letter of Sanction")</strong></span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">1. We wish to make a drawing under the Letter of Sanction as follows: </span></p>
<p>{{IFLIST="AIB_Drawdown__c" FILTER="1 OR 2 OR 3 OR 4 OR 5 OR 6 OR 7"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Clear &amp; Cancel OD"}}{{FILTER="2"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Clear Balance OD"}}{{FILTER="3"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Clear &amp; Close"}}{{FILTER="4"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Lodge to CC"}}{{FILTER="5"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Clear &amp; Cancel CC"}}{{FILTER="6"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Clear F&amp;L"}}{{FILTER="7"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Manual - Free Text Condition"}}</p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Amount:                                     €${LLC_BI__Loan__c.AIB_FacilityApprovalAmount__c}</span></li>
</ul>
<p style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 40px; text-align: justify;">We acknowledge and agree that (i) the maximum amount available under the Letter of Sanction is €${LLC_BI__Loan__c.AIB_FacilityApprovalAmount__c} and this includes the amount(s) required to complete any conditions as set out in the Conditions Precedent section of the Letter of Sanction and (ii) if the amounts required to complete these conditions have increased since the date of the Letter of Sanction, then the amount of new funds available to drawdown under this drawdown instruction will reduce. I/We confirm that the Bank is instructed to transfer the actual amount of new funds available to the Destination Account(s) below.{{LIST="AIB_Drawdown__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Manual"}}{{FILTER="2"FIELD="AIB_Drawdown__c.AIB_BeneficiaryAccountDrawdown__c"NOT="Borrower Internal Account (via AIB Account selection)"}}</p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; color: white;"> </li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Destination Account:                  _____________________________________ <span style="font-family: Helvetica, sans-serif;"><strong>IBAN (International Bank Account Number)</strong></span></span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><strong>                                                               </strong>_____________________________________<strong> <span style="font-family: Helvetica, sans-serif;"><strong>BIC (Bank Identifier Code)</strong></span></strong></span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Account name:                           _____________________________________</span></li>
</ul>
<p> </p>
<p></#list>{{ELSEIFLIST}}</p>
<p>{{LIST="AIB_Drawdown__c" FILTER="1 AND 2"}}{{FILTER="1"FIELD="AIB_Drawdown__c.AIB_DrawdownType__c"IS="Split Disbursal - Manual"}}{{FILTER="2"FIELD="AIB_Drawdown__c.AIB_BeneficiaryAccountDrawdown__c"NOT="Borrower Internal Account (via AIB Account selection)"}}</p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Amount:                                     €<span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">${AIB_Drawdown__c.AIB_Amount__c}</span> </span></li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif; color: white;"> </li>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Destination Account:                  _____________________________________ <span style="font-family: Helvetica, sans-serif;"><strong>IBAN (International Bank Account Number)</strong></span></span></li>
</ul>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><strong>                                                               </strong>_____________________________________<strong> <span style="font-family: Helvetica, sans-serif;"><strong>BIC (Bank Identifier Code)</strong></span></strong></span></p>
<ul>
<li style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">Account name:                           _____________________________________</span></li>
</ul>
<p> </p>
<p></#list></#if></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">2. We confirm that all of the representations and warranties set out in clause 7.10 of the General Terms and Conditions are              true and accurate on the date of this notice as if made on such date.</span></p>
<p><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif; margin-left: 27px;">3. We acknowledge that the Bank may require notice of drawdown.</span></p>
<table style="border-collapse: collapse; border: none;" border="1" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td style="width: 17.3%; border-width: 1pt; border-image: initial; border-style: none;" valign="top">
<p><span style="font-size: 8pt;"><span style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;"><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">Signed:</span></span> </span><span style="font-size: 8pt;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="1"}}{{FILTER="1" FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.AIB_CCustSignPref__c"IS="Paper Signature"}}{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}} {{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}} </span><span style="font-size: 8pt;">{{LIST="LLC_BI__Legal_Entities__c" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: Helvetica, sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower Member"}}                      </span><span style="font-size: 9pt;">Signed for and on behalf of <span style="font-weight: bold;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span> by:</#list>{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
<p> </p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141; page-break-inside: avoid;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Signature of an authorised signatory for the Borrower</p>
<p>_______________________________</p>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;">Print name of authorised signatory for the Borrower</p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list>{{ELSEIFLIST}}</span><span style="font-size: 9pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">{{LIST="LLC_BI__Legal_Entities__c" ORDER="AIB_Sequence__c ASC" FILTER="1"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c"IS="True"}}</span></p>
<table style="border-collapse: collapse; width: 89.0672%; border-style: none; float: left;">
<tbody>
<tr style="border-style: none;">
<td style="width: 5.0222%; border-style: none; vertical-align: top;">
<p><img style="font-family: 'Arial Unicode MS', sans-serif; font-size: 9pt; text-indent: 0px;" src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_SignHere" width="80" height="26" /></p>
</td>
<td style="width: 33.9095%; border-style: none; vertical-align: top;">
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 88.6967%; border: 2px solid #414141; page-break-inside: avoid;" border="2px solid black;">
<tbody>
<tr>
<td style="width: 100%;"> </td>
</tr>
</tbody>
</table>
<p style="font-family: 'Arial Unicode MS', sans-serif; font-size: 7pt;"><span style="font-size: 7pt; line-height: 107%; font-family: 'Arial Unicode MS', sans-serif;">${LLC_BI__Legal_Entities__c.AIB_CAName__c}</span></p>
</td>
</tr>
</tbody>
</table>
<p><span style="font-size: 8pt;"></#list> </#if></#if></span></p>
</td>
</tr>
</tbody>
</table>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div><span style="font-size: 8pt;"></#if></#if></span><#list LLC_BI__Legal_Entities__c as item><#if A AND (B OR C)>{{COND="A"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c" IS="Borrower"}}{{COND="B"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Partnership"}}{{COND="C"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Sole Trader / Trading As"}} </p>
<table style="width: 101.258%; background-color: #e6e6e6; font-family: Helvetica, sans-serif; border: hidden;">
<tbody>
<tr>
<th style="width: 101.258%; height: 41px; font-size: 9pt; border-style: hidden; font-family: Helvetica, sans-serif; text-align: center;">
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; text-align: left;">       Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}</p>
</th>
</tr>
<tr>
<td style="width: 101.258%; border-style: hidden; text-align: center;"><span style="font-size: 14pt;"><strong>Data Protection Statement</strong></span></td>
</tr>
<tr>
<td style="width: 101.258%; font-size: 12pt; border-style: hidden; font-family: Helvetica, sans-serif; padding-bottom: 10px; text-align: center;"> </td>
</tr>
</tbody>
</table>
<p style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;">For information about how we collect personal information about you, how we use it and how you can interact with us about it, see our Data Protection Notice in branches and online. It may change from time to time.</p>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0; text-align: center; left: 0;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: Arial Unicode MS, sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></p>
<p></#if>{{ENDLIST}</p>
<p><div class="mce-pagebreak"></div></p>
<p><span style="font-size: 10.6667px;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{LIST="LLC_BI__Legal_Entities__c" <span style="font-size: 8pt;">FILTER="1 AND 2" ORDER="LLC_BI__Legal_Entities__c.AIB_Sequence__c ASC"}}</span> {{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c" IS="Borrower Member"}}<span style="font-size: 8pt;">{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c" GREATER</span>="1"}}</span></p>
<p style="font-size: 20pt; text-align: center;">Bundle - ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</p>
<div style="margin: 0px 35px 0px;">
<ul>
<li style="margin: 0px 35px 0px;">Cover Letter</li>
</ul>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></p>
<table style="width: 101.664%; font-family: Helvetica; 41px; margin: 25px; margin-top: -20px; padding: 0px;">
<tbody>
<tr>
<th style="width: 38%; height: 41px; font-size: 9pt; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-weight: bold;">Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}<br /><br /><br /></span></th>
<th style="width: 46.3935%; height: 41px; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-size: 20pt; text-align: left;">Your Loan<br /><br /></span></th>
<th style="width: 20.8802%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688147453000/AIB_Logo" width="80" height="80" /></strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 5.6641%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 9pt; font-family: Helvetica; vertical-align: top; margin-top: -40px; margin: 25px; padding: 0;">
<tbody>
<tr>
<td style="width: 39.5553%; border-style: hidden;">
<p style="font-family: Arial Unicode MS, sans-serif; margin: 0; padding: 0;"><span style="font-family: Arial Unicode MS Bold, sans-serif; font-weight: bold;"><strong>Private and Confidential</strong></span><br />${LLC_BI__Legal_Entities__c.AIB_CAName__c}<br /><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress1__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress2__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress2__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress3__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress3__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress4__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress4__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress5__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress5__c}<br /></#if></p>
</td>
<td style="width: 27.5614%; border-style: hidden;">
<p> </p>
</td>
<td style="width: 129.392%; border-style: hidden;">
<p style="font-family: Arial Unicode MS, sans-serif;">${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}.<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}</p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: Arial Unicode MS, sans-serif;"><span style="font-family: font-family: Arial Unicode MS, sans-serif;">Date: ${LLC_BI__Loan__c.AIB_CurrentDate__c}</span></p>
<table style="border-collapse: collapse; width: 98.9578%; border-style: hidden; page-break-after: always;" border="1">
<tbody>
<tr>
<td style="width: 61.1842%; border-style: none;">
<table class="center" style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; width: 99.8548%; border-style: hidden;" border="0" cellspacing="0" cellpadding="0" align="left">
<tbody>
<tr style="break-inside: avoid;">
<td style="width: 100%; border-style: none; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;" valign="top">
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Dear Customer,</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Following your recent application for credit, I am pleased to approve your lending application. I have sent the pack to {{LIST="LLC_BI__Legal_Entities__c@LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.Id"} ORDER="AIB_Sequence__c ASC" LIMIT="1"}{{FILTER="A" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="1"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</#list> who applied for this credit facility with you.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Please read the documents in the pack carefully and if you have any questions, feel free to call us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">As this is a legal contract, we recommend that you seek independent legal advice.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">If you’d like to go ahead with this facility, please follow the instructions below:</p>
<ul>
<li>Sign and date the Letter of Sanction on the last page at the ‘Sign Here’ arrow.<#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c"IS="true"}}<#if B>{{COND="B"FIELD="LLC_BI__Loan__c.LLC_BI__Product__c"IS="Term Loan"}}</li>
<li>Complete and sign the SEPA Direct Debit Mandate at the ‘Sign Here’ arrow.</#if></#if></li>
<li>Check the Conditions Precedent Section of the Letter of Sanction for anything else that you might need to do.</li>
<li>Return the signed and dated documents to us.</li>
</ul>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Thank you for choosing to bank with us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Yours sincerely,</p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Arial Unicode MS', sans-serif;"> </p>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_Signature_PaperJourney" alt="" width="147" height="29" /></p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Maria Hynes</span></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Head of Fulfilment CoE</span></em></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="text-align: justify; margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><strong><span style="font-size: 9pt; font-family: Helvetica, sans-serif;">For and on behalf of Allied Irish Banks, p.l.c.</span></strong></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style="width: 2.77104%; border-style: hidden;"> </td>
<td style="width: 43.5024%; border-style: hidden; vertical-align: top; padding-top: 50px;">
<table style="border-collapse: collapse; width: 100.319%; background-color: #d0cece; font-family: Helvetica;" border="1">
<tbody>
<tr>
<td style="background-color: #e6e6e6; border-style: hidden; font-family: Helvetica, sans-serif; width: 100%; margin: 0px 0px 0px;"><span style="font-size: 20pt; font-family: Helvetica, sans-serif; color: #993366;">What’s in the pack?</span></td>
</tr>
<tr>
<td style="width: 100%; background-color: #efefef; border-style: hidden; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_PFPCompleted__c"IS="YES"}}</span>Statement of Suitability</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the reasons why we consider this facility suitable for you.</#if></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">Letter of Sanction</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the details of your facility including our obligations to you and yours to us. We have included two copies of your Letter of Sanction. One for you to sign and send back to us. The other for you to keep for your records.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">General Terms &amp; Conditions governing Business Lending</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out further terms and conditions that will apply to your facility.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;"><#if B>{{COND="B"FIELD="LLC_BI__Loan__c.LLC_BI__Product__c"IS="Term Loan"}}<#if C>{{COND="C"FIELD="LLC_BI__Loan__c.<span style="font-size: 8pt;">AIB_DDMandateGenerationCriteria__c</span>" IS="true"}} </span>SEPA Direct Debit Mandate</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This allows us to collect the loan repayments from the account you asked us to use.</#if></#if></p>
<!--SME1-9078-->
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">{{IFLIST="LLC_BI__Legal_Entities__c" FILTER="(1 OR 2 OR 3 OR 4 OR 5) AND 6"}}{{FILTER="1"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Private Ltd Company (Ltd)"}}{{FILTER="2"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Public Limited Company (PLC)"}}{{FILTER="3"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Designated Activity Company (DAC)"}}{{FILTER="4"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Company Limited by Guarantee (CLG)"}}{{FILTER="5"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Account__r.AIB_EntityType__c"IS="Unlimited Company"}}{{FILTER="6"FIELD="LLC_BI__Legal_Entities__c.LLC_BI__Borrower_Type__c"IS="Borrower"}}{{ELSEIFLIST}}Data Protection Notice </span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;">This sets out how we will use and store your information at AIB.</#if></span></span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"> </p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: -45px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0; text-align: center; left: 0;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: Arial Unicode MS, sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><span style="font-size: 8pt;"><div class="mce-pagebreak"></div></span></p>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><span style="font-size: 8pt;"></#list>{{ELSEIFLIST}}{{LIST="LLC_BI__Legal_Entities__c" FILTER="B AND C" ORDER="LLC_BI__Legal_Entities__c.AIB_Sequence__c ASC"}}{{FILTER="B"FIELD="LLC_BI__Legal_Entities__c.AIB_LetterofOfferSigner__c" IS="TRUE"}}{{FILTER="C"FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c" NOT="1"}}</span></p>
<p style="font-size: 20pt; text-align: center;">Bundle - ${LLC_BI__Legal_Entities__c.AIB_CAName__c}</p>
<div style="margin: 0px 35px 0px;">
<ul>
<li style="margin: 0px 35px 0px;">Cover Letter</li>
</ul>
</div>
<p><div class="mce-pagebreak"></div></p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></p>
<table style="width: 101.664%; font-family: Helvetica; 41px; margin: 25px; margin-top: -20px; padding: 0px;">
<tbody>
<tr>
<th style="width: 38%; height: 41px; font-size: 9pt; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-weight: bold;">Reference No: ${LLC_BI__Loan__c.LLC_BI__Product_Package__r.AIB_ApplicationID__c}<br /><br /><br /></span></th>
<th style="width: 46.3935%; height: 41px; border-style: none; text-align: left;"><span style="font-family: Helvetica, sans-serif; font-size: 20pt; text-align: left;">Your Loan<br /><br /></span></th>
<th style="width: 20.8802%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688147453000/AIB_Logo" width="80" height="80" /></strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 5.6641%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
<th style="width: 2.96574%; font-size: 9pt; border-style: none; text-align: left; height: 41px;"><strong style="font-size: medium; text-align: center;"> </strong></th>
</tr>
</tbody>
</table>
<table class="center" style="border-collapse: collapse; width: 94.0832%; border-style: hidden; font-size: 9pt; font-family: Helvetica; vertical-align: top; margin-top: -40px; margin: 25px; padding: 0;">
<tbody>
<tr>
<td style="width: 39.5553%; border-style: hidden;">
<p style="font-family: Arial Unicode MS, sans-serif; margin: 0; padding: 0;"><span style="font-family: 'Arial Unicode MS Bold', sans-serif; font-weight: bold; margin: 0; padding: 0;"><strong>Private and Confidential</strong></span><br />${LLC_BI__Legal_Entities__c.AIB_CAName__c}<br /><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress1__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress1__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress2__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress2__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress3__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress3__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress4__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress4__c}<br /></#if><#if A>{{COND="A" FIELD="LLC_BI__Legal_Entities__c.AIB_CAAddress5__c" IS NOT=""}}${LLC_BI__Legal_Entities__c.AIB_CAAddress5__c}<br /></#if></p>
</td>
<td style="width: 27.4176%; border-style: hidden;"> </td>
<td style="width: 129.536%; border-style: hidden;">
<p style="font-family: 'Arial Unicode MS', sans-serif;">${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine1__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine2__c},<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchAddressLine3__c}.<br />${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchPhoneArea__c} ${LLC_BI__Legal_Entities__c.LLC_BI__Product_Package__r.AIB_OriginatingNSC__r.AIB_BranchTelephonenumber__c}</p>
</td>
</tr>
</tbody>
</table>
<p class="format" style="font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Date: ${LLC_BI__Loan__c.AIB_CurrentDate__c}</p>
<table style="border-collapse: collapse; width: 98.9578%; border-style: hidden;" border="1">
<tbody>
<tr>
<td style="width: 61.1842%; border-style: none;">
<table class="center" style="border-collapse: collapse; font-family: 'Arial Unicode MS', sans-serif; width: 99.8548%; border-style: hidden;" border="0" cellspacing="0" cellpadding="0" align="left">
<tbody>
<tr style="break-inside: avoid;">
<td style="width: 100%; border-style: none; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;" valign="top">
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Dear Customer,</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Following your recent application for credit, I am pleased to approve your lending application. I have sent the pack to {{LIST="LLC_BI__Legal_Entities__c@LLC_BI__Legal_Entities__c.LLC_BI__Loan__r.Id"} ORDER="AIB_Sequence__c ASC" LIMIT="1"}{{FILTER="A" FIELD="LLC_BI__Legal_Entities__c.AIB_Sequence__c"IS="1"}}${LLC_BI__Legal_Entities__c.AIB_CAName__c}</#list> who  applied for this credit facility with you.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Please read the documents in the pack carefully and if you have any questions, feel free to call us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">As this is a legal contract, we recommend that you seek independent legal advice.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">If you’d like to go ahead with this facility, please follow the instructions below:</p>
<ul>
<li>Sign and date the Letter of Sanction on the last page at the ‘Sign Here’ arrow.<span style="font-size: 8pt;"><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "True"></span></li>
<li>Complete and sign the SEPA Direct Debit Mandate at the ‘Sign Here’ arrow.</#if></li>
<li>Check the Conditions Precedent Section of the Letter of Sanction for anything else that you might need to do.</li>
<li>Return the signed and dated documents to us.</li>
</ul>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Thank you for choosing to bank with us.</p>
<p style="margin: 0cm; font-size: 4pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Arial Unicode MS', sans-serif;">Yours sincerely,</p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Arial Unicode MS', sans-serif;"> </p>
<p style="margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><img src="https://aib--r1uat--c.sandbox.vf.force.com/resource/1688145891000/AIB_SME_Signature_PaperJourney" alt="" width="147" height="29" /></p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Maria Hynes</span></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 9pt; font-family: 'Times New Roman', serif;"><em><span style="font-family: arial, helvetica, sans-serif; font-size: 9pt;">Head of Fulfilment CoE</span></em></p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="text-align: justify; margin: 0cm; font-size: 10pt; font-family: 'Times New Roman', serif;"><strong><span style="font-size: 9pt; font-family: Helvetica, sans-serif;">For and on behalf of Allied Irish Banks, p.l.c.</span></strong></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style="width: 2.77104%; border-style: hidden;"> </td>
<td style="width: 43.5024%; border-style: hidden; vertical-align: top; padding-top: 50px;">
<table style="border-collapse: collapse; width: 100.319%; background-color: #d0cece; font-family: Helvetica;" border="1">
<tbody>
<tr>
<td style="background-color: #e6e6e6; border-style: hidden; font-family: Helvetica, sans-serif; width: 100%; margin: 0px 0px 0px;"><span style="font-size: 20pt; font-family: Helvetica, sans-serif; color: #993366;">What’s in the pack?</span></td>
</tr>
<tr>
<td style="width: 100%; background-color: #efefef; border-style: hidden; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;"><#if A>{{COND="A"FIELD="LLC_BI__Loan__c.AIB_PFPCompleted__c"IS="YES"}}</span>Statement of Suitability</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the reasons why we consider this facility suitable for you.</#if></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">Letter of Sanction</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out the details of your facility including our obligations to you and yours to us. We have included two copies of your Letter of Sanction. One for you to sign and send back to us. The other for you to keep for your records.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">General Terms &amp; Conditions governing Business Lending</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This sets out further terms and conditions that will apply to your facility.</p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="font-size: 8pt;"><#if A AND B><#if LLC_BI__Loan__c.LLC_BI__Product__c == "Term Loan"><#if LLC_BI__Loan__c.AIB_DDMandateGenerationCriteria__c == "True"></span> SEPA Direct Debit Mandate</span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;">This allows us to collect the loan repayments from the account you asked us to use.</#if></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px; line-height: 100%;"> </p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;">Data Protection Notice </span></p>
<p style="font-size: 9pt; font-family: Helvetica, sans-serif; margin: 0px 0px 0px;"><span style="color: #993366;"><span style="color: #000000;">This sets out how we will use and store your information at AIB.</span></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<p style="margin: 0cm; font-size: 2pt; font-family: 'Times New Roman', serif;"> </p>
<table style="border-collapse: collapse; width: 90.5637%; border-style: none; break-after: page;" border="1">
<tbody>
<tr>
<td style="width: 99.3491%; border-style: none;"> </td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="border-style: none;"> </td>
</tr>
</tfoot>
</table>
<div class="footer" style="margin-top: 0px;">
<table style="border-collapse: collapse; width: 100%; border-color: #000000; font-size: 7pt; bottom: 0px; text-align: center; left: 0px;" border="0px">
<tbody>
<tr>
<td style="width: 100%; color: grey; border: 0px; font-family: 'Arial Unicode MS', sans-serif;">
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; margin-bottom: -1em; color: grey;">Allied Irish Banks, p.l.c. Registered Office: 10 Molesworth Street, Dublin 2. Registered in Ireland, No. 24173.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif;">Directors’ names and particulars are available at the company’s registered office and on the AIB Group website.</p>
<p style="text-align: center; font-family: Arial Unicode MS, sans-serif; margin-top: -1em; color: grey;">Allied Irish Banks, p.l.c. is regulated by the Central Bank of Ireland.</p>
</td>
</tr>
</tbody>
</table>
</div>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"> </p>
<p style="text-align: center; margin: 0cm 0cm 8pt; line-height: 107%; font-size: 11pt; font-family: Arial, sans-serif;"><strong><span style="font-size: 14.0pt; line-height: 107%; font-family: Arial, sans-serif; color: #bfbfbf;">This page is intentionally left blank.</span></strong></p>
<p><div class="mce-pagebreak"></div></p>
<div class="footer"></#list></#if></div>
</body>
</html>