<cfif structKeyExists(FORM,'origText')>
	<cfset hashedText = hash(FORM.origText,FORM.algorithm) />
</cfif>

<cfparam name="FORM.origText" default="#chr(0)#" />
<cfparam name="hashedText" default="#chr(0)#" />
<cfparam name="FORM.algorithm" default="SHA-512" />

<html>
<head>
<title>Hash Text Form</title>
</head>
<body>
<cfform name="hashText">
	Text to Hash: <cfinput type="text" name="origText" value="#FORM.origText#" /><br />
	Algorithm: <select name="algorithm">
					<option value="CFMX_COMPAT" <cfif FORM.algorithm EQ "CFMX_COMPAT">selected</cfif>>CFMX_COMPAT</option>
					<option value="MD5" <cfif FORM.algorithm EQ "MD5">selected</cfif>>MD5</option>
					<option value="SHA" <cfif FORM.algorithm EQ "SHA">selected</cfif>>SHA</option>
					<option value="SHA-256" <cfif FORM.algorithm EQ "SHA-256">selected</cfif>>SHA-256</option>
					<option value="SHA-384" <cfif FORM.algorithm EQ "SHA-384">selected</cfif>>SHA-384</option>
					<option value="SHA-512" <cfif FORM.algorithm EQ "SHA-512">selected</cfif>>SHA-512</option>
				</select><br />
	<input type="submit" name="Submit" value="Hash" /><br />
	Hashed Text: <cfinput type="text" name="hashedText" value="#hashedText#" />
</cfform>
</body>
</html>