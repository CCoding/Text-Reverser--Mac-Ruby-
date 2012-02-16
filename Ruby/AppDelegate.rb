#
#  AppDelegate.rb
#  Ruby
#
#  Created by Dominik Hofacker on 16.11.11.
#  Copyright 2011 Privat. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :textField
    attr_accessor :label
    attr_accessor :textLength
    attr_accessor :textView
    def applicationDidFinishLaunching(a_notification)
        @label.stringValue = "Output String"
        @textField.stringValue = ""
        @textLength.stringValue = @textField.stringValue.length
        @textView.string = "Output string will be shown here..."
    end
    
    def changeText(sender)
        @label.stringValue = @textField.stringValue
        @textLength.stringValue = @textField.stringValue.length
        @textView.string = @textField.stringValue
    end
    def changeTextReversed(sender)
        @label.stringValue = @textField.stringValue.reverse
        @textView.string = @textField.stringValue.reverse
        @textLength.stringValue = @textField.stringValue.length
        @textField.stringValue = @textField.stringValue.reverse
    end
end

