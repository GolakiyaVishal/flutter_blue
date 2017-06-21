import 'dart:async';
import 'package:flutter_blue/abstractions/contracts/bluetooth_state.dart';
import 'package:flutter_blue/abstractions/contracts/i_adapter.dart';
import 'package:flutter_blue/abstractions/eventargs/bluetooth_state_changed_args.dart';

/// Manages the bluetooth LE functionality of the device (usually your smartphone).
abstract class IBluetoothLE {

/// Occurs when <see cref="State"/> has changed.
// event EventHandler<BluetoothStateChangedArgs> StateChanged;
Stream<BluetoothStateChangedArgs> stateChanged();

/// State of the bluetooth LE.
Future<BluetoothState> get state;

/// Indicates whether the device can communicate via bluetooth low energy.
bool get isAvailable;

/// Indicates whether the bluetooth adapter is turned on or not.
/// <c>true</c> if <see cref="State"/> is <c>BluetoothState.On</c>
bool get isOn;

/// Adapter to that provides access to the physical bluetooth adapter.
IAdapter get adapter;

}