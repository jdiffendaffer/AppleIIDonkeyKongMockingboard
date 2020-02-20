@echo off
:top
ca65 -o DonkeyKongMockingboard.obj --listing DonkeyKongMockingboard.a65
ld65 -t none -o DonkeyKongMockingboard.bin DonkeyKongMockingboard.obj
shift
if not %1.==. goto top
:end
copy DonkeyKongMockingboard.bin DONKEYPATCH.BIN#068000
