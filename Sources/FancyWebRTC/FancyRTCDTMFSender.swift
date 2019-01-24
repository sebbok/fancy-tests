    //
    //  FancyRTCDTMFSender.swift
    //  FancyWebRTC
    //
    //  Created by Osei Fortune on 1/23/19.
    //  Copyright © 2019 Osei Fortune. All rights reserved.
    //
    
    import Foundation
    import WebRTC
    
    @objcMembers public class FancyRTCDTMFSender: NSObject {
        private var _sender: RTCDtmfSender
        
        public init(sender: RTCDtmfSender) {
            _sender = sender;
        }
        
        public var toneBuffer: String {
            get{
                return _sender.remainingTones()
            }
        }
        
        public var sender: RTCDtmfSender {
            get {
                return _sender
            }
        }
        
        public func dispose() {
            
        }
        
        
        public func insertDTMF(tones: String, duration: Double?, interToneGap: Double?) {
            let d = duration ?? 100.0
            let i = interToneGap ?? 70.0;
            _sender.insertDtmf(tones, duration: d, interToneGap: i)
        }
    }
