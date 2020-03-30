//
//  MPCSHandler.swift
//  TicTacToe
//
//  Created by Karl Kristjánsson on 28/03/2020.
//  Copyright © 2020 Karl Kristjánsson. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class MPCSHandler: NSObject, MCSessionDelegate {

    var peerID:MCPeerID!
    var session:MCSession!
    var browser:MCBrowserViewController!
    var advertiser:MCAdvertiserAssistant? = nil
    
    func setupPeerWithDisplayName (displayName: String){
        peerID = MCPeerID(displayName: displayName)
    }
    func setupSession(){
        session = MCSession(peer: peerID)
        session.delegate = self
    }
    func setupBrowser(){
        browser = MCBrowserViewController(serviceType: "my-game", session: session)
    }
    func advertiseSelf(advertise: Bool){
        if advertise {
            advertiser = MCAdvertiserAssistant(serviceType: "my-game", discoveryInfo: nil, session: session)
            advertiser!.start()
        }else{
            advertiser?.stop()
            advertiser = nil
        }
    }
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        let userInfo = ["peerID":peerID, "state":state.rawValue ]
        dispat
    }
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        <#code#>
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        <#code#>
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        <#code#>
    }
    
    func session(_ session: MCSession, didReceiveCertificate certificate: [Any]?, fromPeer peerID: MCPeerID, certificateHandler: @escaping (Bool) -> Void) {
        <#code#>
    }
    
    
    
    
    
    
    
    
    
    
    
}
