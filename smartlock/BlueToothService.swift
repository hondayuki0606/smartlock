//
//  BlueTo othServic.swift
//  smartlock
//
//  Created by 本田尚行 on 2019/12/12.
//  Copyright © 2019 本田尚行. All rights reserved.
//

import CoreBluetooth

class BlueToothService: NSObject,CBCentralManagerDelegate,CBPeripheralDelegate{
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch (central.state) {
        case .poweredOff:
            break
            //BLE PowerOff
        default:
            break
            //Unsupport
        }
    }
    var centralManager: CBCentralManager?
    
    override init(){
        super.init()
        centralManager = CBCentralManager(delegate: self, queue: nil)
        
        self.scanStart()
    }
    
    func scanStart(){
        if centralManager!.isScanning == false{
            // サービスのUUIDを指定しない
            centralManager!.scanForPeripherals(withServices: nil, options: nil)
            
            // サービスのUUIDを指定する
            let service: [CBUUID] = [CBUUID(string: "サービスのUUID")]
            centralManager!.scanForPeripherals(withServices: service, options: nil)
        }
        
    }
}
