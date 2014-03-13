- (TOSCmdResult *) parseResult:(NSString *)res
{
    TOSCmdResult *result = [[TOSCmdResult alloc] init];
    
    do {
        if (0 == [res length])
        {
            result.status = TOSINTERNALSTATUS_ERROR_HTTP;
            break;
        }
        
        int statusTmp;
        @try
        {
            JSONObject *jsonObject = [[JSONObject alloc] initWithString:res];
            statusTmp = [jsonObject optInt:@"status"];
        }
        @catch (NSException *exception)
        {
            TOSLogError(@"Parse TOSHttpMessenger result error: %@", [exception reason]);
            statusTmp = (int)StatusTvGetDtvInfo_ErrorInvalidSyntax;
        }
        
        if (0 == statusTmp)
        {
            result.status = TOSINTERNALSTATUS_SUCCESS;
        }
        else
        {
            result.status = TOSINTERNALSTATUS_ERROR;
            break;;
        }
    } while (NO);

    return result;
}



//---------------------------------------------------------

/*
*   V1.0
*/
- (TOSCmdResult *) parseResult:(NSString *)res
{
    TOSCmdResult *result = [[TOSCmdResult alloc] init];
    BOOL passHttpErrorCheck = YES;
    
    if (0 == [res length]) {
        result.status = TOSINTERNALSTATUS_ERROR_HTTP;
    }else{
        passHttpErrorCheck = NO;
    }
    
    if (passHttpErrorCheck) {
        
        int status = -1;
        @try {
            JSONObject *jsonObject = [[JSONObject alloc] initWithString:res];
            status = [jsonObject optInt:@"status"];
        }
        @catch (NSException *exception) {
            TOSLogError(@"Parse TOSHttpMessenger result error: %@", [exception reason]);
            status = (int)StatusTvGetDtvInfo_ErrorInvalidSyntax;
        }
       
        if (0 == status) {
            result.status = TOSINTERNALSTATUS_SUCCESS;
        }else {
            result.status = TOSINTERNALSTATUS_ERROR;
        }
    }

    return result;
}

