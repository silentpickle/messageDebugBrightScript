''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'This is free and unencumbered software released into the public domain.
''
'Anyone is free to copy, modify, publish, use, compile, sell, or
'distribute this software, either in source code form or as a compiled
'binary, for any purpose, commercial or non-commercial, and by any
'means.
''
'In jurisdictions that recognize copyright laws, the author or authors
'of this software dedicate any and all copyright interest in the
'software to the public domain. We make this dedication for the benefit
'of the public at large and to the detriment of our heirs and
'successors. We intend this dedication to be an overt act of
'relinquishment in perpetuity of all present and future rights to this
'software under copyright law.
''
'THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
'EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
'MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
'IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
'OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
'ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
'OTHER DEALINGS IN THE SOFTWARE.

'For more information, please refer to <http://unlicense.org>
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
function peekReportMsg_debug(message as object, identifier as string) as void

    print "Message type " + type(message) + " identifier " + identifier

    'Gads, I miss switch statements.
    if (type(message) = "roAudioPlayerEvent")
        if(message.isListItemSelected())
            print "isListItemSelected"
        endif
        if(message.isStatusMessage())
            print "isStatusMessage"
         endif
         if(message.isRequestSucceeded())
            print "isRequestSucceeded"
         endif
         if(message.isRequestFailed())
            print "isRequestFailed"
         endif
         if(message.isFullResult())
            print "isFullResult"
         endif
         if(message.isPartialResult())
            print "isPartialResult"
         endif
         if(message.isPaused())
            print "isPaused"
         endif
         if(message.isResumed())
            print "isResumed "
         endif
    else if (type(message) = "roCaptionRendererEvent")
        if(message.isCaptionUpdateRequest())
            print "isCaptionUpdateRequest()"
        end if
        if(message.isCaptionText())
            print "isCaptionText"
        end if
    else if (type(message) = "roChannelStoreEvent")
        if(message.isRequestSucceeded())
            print "isRequestSucceeded " 
        end if
    else if (type(message) = "roCodeRegistrationScreenEvent")    
        'all messages handled in general area.        
    else if (type(message) = "roDeviceInfoEvent")
        if(message.isStatusMessage())
            print "isStatusMessage "
        endif
    else if (type(message) = "roFileSystemEvent")
        if(message.isStorageDeviceAdded())
            print "isStorageDeviceAdded"
        endif
        
        if(message.isStorageDeviceRemoved())
            print "isStorageDeviceRemoved"
        endif
    else if (type(message) = "roGridScreenEvent")
        'handled in general area
    else if (type(message) = "roHdmiHotPlugEvent")
        if(message.isHdmiHotPlug())
            print "isHdmiHotPlug"
        endif
    else if (type(message) = "roHdmiStatusEvent")
        if(message.isHdmiStatus())
            print "isHdmiStatus"
        endif
    else if (type(message) = "roImageCanvasEvent")
        'handled in general area
    else if (type(message) = "roInputEvent")
        if(message.isInput())
            print "isInput"
        endif
    else if (type(message) = "roKeyboardScreenEvent")
        'handed in general area
    else if (type(message) = "roListScreenEvent")
        'handled in general area
    else if (type(message) = "roMessageDialogEvent")
        'handled in general area
    else if (type(message) = "roOneLineDialogEvent")
        'handled in general area
    else if (type(message) = "roParagraphScreenEvent")
        'handled in general area
    else if (type(message) = "roSearchScreenEvent")
        if(message.isCleared())
            print "isCleared()"
        endif
        if(message.isFullResult())
            print "isFullResult()"
        endif        
    else if (type(message) = "roSlideShowEvent")
        if(message.isRemoteKeyPressed())
            print "isRemoteKeyPressed"
        endif
        if(message.isRequestFailed())
            print "isRequestFailed"
        endif
        if(message.isRequestInterrupted())
            print "isRequestInterrupted"
        endif
        if(message.isPaused())
            print "isPaused"
        endif
        if(message.isResumed())
            print "isResumed"
        endif
        'rest handled in general area.
    else if (type(message) = "roSocketEvent")
        print "GetSocketId: " + message.GetSocketId()
    else if (type(message) = "roSpringBoardScreenEvent")
        'handled in general area
    else if (type(message) = "roSystemLogEvent")
        'handled in general area
    else if (type(message) = "roTextScreenEvent")
        'handled in general area
    else if (type(message) = "roTextToSpeechEvent")
        'handled in general area
    else if (type(message) = "roTextureRequestEvent")
        print "roTextureRequestEvent.GetId " + Stri(message.GetId(), 10)
        print "roTextureRequestEvent.GetState " + Stri(message.GetState(), 10)
        print "roTextureRequestEvent.GetURI " + message.GetURI()
        print "roTextureRequestEvent.GetBitmap UNDER CONSTRUCTION"
    else if (type(message) = "roTunerEvent")
        if(message.isSignalQuality())
            print "isSignalQuality"
        endif
    else if (type(message) = "roUniversalControlEvent")
        print "roUniversalControlEvent.GetID " + Stri(message.GetID(), 10)
        print "roUniversalControlEvent.GetInt " + Stri(message.GetInt(), 10)
        print "roUniversalControlEvent.GetChar " + Stri(message.GetChar(), 16)
        print "roUniversalControlEvent.GetKey " + Stri(message.GetKey(), 10)
        if(message.isPressed)
            print "roUniversalControlEvent.isPressed"
        endif
    else if (type(message) = "roUrlEvent")
        print "roUrlEvent.GetInt " + Stri(message.GetInt(), 10)
        print "roUrlEvent.GetResponseCode " + Stri(message.GetResponseCode(), 10)
        print "roUrlEvent.GetFailureReason " + message.GetFailureReason()
        print "roUrlEvent.GetSourceIdentity " + Stri(message.GetSourceIdentity(), 10)
        print "roUrlEvent.GetTargetIpAddress " + message.GetTargetIpAddress()
        'headers omitted for the time being
        print "roUrlEvent. headers function UNDER CONSTRUCTION"        
    else if (type(message) = "roVideoPlayerEvent")
        print "roVideoPlayerEvent UNDER CONSTRUCTION"
    else if (type(message) = "roVideoScreenEvent")
        'handled in the general area.
    endif    

    if(message.isButtonInfo() = true)
        print "common.isButtonInfo"
    endif
    
    if(message.isListItemSelected() = true)
        print "common.isListItemSelected"
    endif
    
    if(message.isListItemFocused() = true)
        print "common.isListItemFocused"
    endif
    
    if(message.isRemoteKeyPressed() = true)
        print "common.isRemoteKeyPressed"
    end if

    if(message.isButtonPressed() = true)
        print "common.isButtonPressed"
    end if

    if(message.isScreenClosed() = true)
        print "common.isScreenClosed"
    endif
    
    'If we don't do common functions together, this gets to be huge.
    print "common.GetMessage " + message.GetMessage()
    print "common.GetIndex " + Stri(message.GetIndex(), 10)
    print "common.GetInfo " + FormatJSON(message.GetInfo(), 1)
    print "common.GetData " + stri(message.GetData(), 10)
    
end function