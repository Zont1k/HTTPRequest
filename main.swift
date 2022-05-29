let username = "myUserName"
let password = "myPassword"
let loginString = NSString(format: "%@:%@", username, password)
let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
let base64LoginString = loginData.base64EncodedStringWithOptions(NSDataBase64EncodingOptions())
        request.setValue(base64LoginString, forHTTPHeaderField: "Authorization")
