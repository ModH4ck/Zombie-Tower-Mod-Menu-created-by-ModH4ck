#import <Foundation/Foundation.h> 
#import "code_inject.h"
#import "process_info.h"
#import <dlfcn.h>
 
#define PLIST_PATH @"/var/mobile/Library/Preferences/ModernCombat2.plist"
 
BOOL ammo;
BOOL nade;
BOOL accuracy;
BOOL recoil;
BOOL speed;
BOOL speed1;
BOOL speed2;
BOOL xp;
BOOL xp2;
BOOL xp3;
BOOL xp4;
BOOL xp5;
BOOL xp6;
BOOL xp7;
BOOL xp8;
BOOL xp9;
BOOL xp10;
BOOL xp11;
BOOL xp12;
BOOL xp13;
BOOL xpp;
BOOL xpp2;
BOOL xpp3;
BOOL xpp4;
BOOL xpp5;
BOOL xpp6;
BOOL xpp7;
BOOL xpp8;
BOOL xpp9;
BOOL xpp10;
BOOL xpp11;
BOOL xpp12;
BOOL xpp13;
BOOL shot;
BOOL shot2;
BOOL shot3;
BOOL shot4;
 
__attribute__((constructor))
void DYLIB_ENTRY(void) //when the dylib starts up
{
 
ammo = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kAmmo"]boolValue];
 
nade = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kNade"]boolValue];
 
accuracy = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kAccuracy"]boolValue];
 
recoil = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kRecoil"]boolValue];
 
speed = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kSpeed"]boolValue];

xp = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kXp"]boolValue];

xpp = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kXpp"]boolValue];

shot = [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH]valueForKey:@"kShot"]boolValue];
 

if (ammo) {
uint32_t *ammo = 
reinterpret_cast<uint32_t*>(0x912E8);
patch<uint32_t>(ammo, CFSwapInt32(0x0000A0E1));
}
 
if (nade) {
uint32_t *nade = 
reinterpret_cast<uint32_t*>(0x27E98);
patch<uint32_t>(nade, CFSwapInt32(0x0000A0E1));
}
 
if (accuracy) {
uint32_t *accuracy = 
reinterpret_cast<uint32_t*>(0x90E50);
patch<uint32_t>(accuracy, 
CFSwapInt32(0x1EFF2FE1));
}
 
if (recoil) {
uint32_t *recoil = 
reinterpret_cast<uint32_t*>(0x8E258);
patch<uint32_t>(recoil, 
CFSwapInt32(0x0000A0E1));
}
 
if (speed) {
uint32_t *speed = 
reinterpret_cast<uint32_t*>(0x2178C);
patch<uint32_t>(speed, 
CFSwapInt16(0x0000003F));

uint32_t *speed1 = 
reinterpret_cast<uint32_t*>(0x21794);
patch<uint32_t>(speed1, 
CFSwapInt32(0x0000803F));
 
uint32_t *speed2 = 
reinterpret_cast<uint32_t*>(0x21798);
patch<uint32_t>(speed2, 
CFSwapInt32(0xCDCC8C3F));
}

if (xp) {
uint16_t *xp = 
reinterpret_cast<uint16_t*>(0x11203c);
patch<uint16_t>(xp, 
CFSwapInt16(0x6430));

uint16_t *xp2 = 
reinterpret_cast<uint16_t*>(0x112050);
patch<uint16_t>(xp2, 
CFSwapInt16(0x6430));

uint16_t *xp3 = 
reinterpret_cast<uint16_t*>(0x112064);
patch<uint16_t>(xp3, 
CFSwapInt16(0x6430));

uint16_t *xp4 = 
reinterpret_cast<uint16_t*>(0x112078);
patch<uint16_t>(xp4, 
CFSwapInt16(0x6430));

uint16_t *xp5 = 
reinterpret_cast<uint16_t*>(0x1120A0);
patch<uint16_t>(xp5, 
CFSwapInt16(0x6430));

uint16_t *xp6 = 
reinterpret_cast<uint16_t*>(0x1120B4);
patch<uint16_t>(xp6, 
CFSwapInt16(0x6430));

uint16_t *xp7 = 
reinterpret_cast<uint16_t*>(0x1120C8);
patch<uint16_t>(xp7, 
CFSwapInt16(0x6430));

uint16_t *xp8 = 
reinterpret_cast<uint16_t*>(0x1120DC);
patch<uint16_t>(xp8, 
CFSwapInt16(0x6430));

uint16_t *xp9 = 
reinterpret_cast<uint16_t*>(0x1120F0);
patch<uint16_t>(xp9, 
CFSwapInt16(0x6430));

uint16_t *xp10 = 
reinterpret_cast<uint16_t*>(0x112104);
patch<uint16_t>(xp10, 
CFSwapInt16(0x6430));

uint16_t *xp11 = 
reinterpret_cast<uint16_t*>(0x112118);
patch<uint16_t>(xp11, 
CFSwapInt16(0x6430));

uint16_t *xp12 = 
reinterpret_cast<uint16_t*>(0x11212C);
patch<uint16_t>(xp12, 
CFSwapInt16(0x6430));

uint16_t *xp13 = 
reinterpret_cast<uint16_t*>(0x112140);
patch<uint16_t>(xp13, 
CFSwapInt16(0x6430));
}

if (xpp) {
uint16_t *xpp = 
reinterpret_cast<uint16_t*>(0x11203c);
patch<uint16_t>(xpp, 
CFSwapInt16(0xC830));

uint16_t *xpp2 = 
reinterpret_cast<uint16_t*>(0x112050);
patch<uint16_t>(xpp2, 
CFSwapInt16(0xC830));

uint16_t *xpp3 = 
reinterpret_cast<uint16_t*>(0x112064);
patch<uint16_t>(xpp3, 
CFSwapInt16(0xC830));

uint16_t *xpp4 = 
reinterpret_cast<uint16_t*>(0x112078);
patch<uint16_t>(xpp4, 
CFSwapInt16(0xC830));

uint16_t *xpp5 = 
reinterpret_cast<uint16_t*>(0x1120A0);
patch<uint16_t>(xpp5, 
CFSwapInt16(0xC830));

uint16_t *xpp6 = 
reinterpret_cast<uint16_t*>(0x1120B4);
patch<uint16_t>(xpp6, 
CFSwapInt16(0xC830));

uint16_t *xpp7 = 
reinterpret_cast<uint16_t*>(0x1120C8);
patch<uint16_t>(xpp7, 
CFSwapInt16(0xC830));

uint16_t *xpp8 = 
reinterpret_cast<uint16_t*>(0x1120DC);
patch<uint16_t>(xpp8, 
CFSwapInt16(0xC830));

uint16_t *xpp9 = 
reinterpret_cast<uint16_t*>(0x1120F0);
patch<uint16_t>(xpp9, 
CFSwapInt16(0xC830));

uint16_t *xpp10 = 
reinterpret_cast<uint16_t*>(0x112104);
patch<uint16_t>(xpp10, 
CFSwapInt16(0xC830));

uint16_t *xpp11 = 
reinterpret_cast<uint16_t*>(0x112118);
patch<uint16_t>(xpp11, 
CFSwapInt16(0xC830));

uint16_t *xpp12 = 
reinterpret_cast<uint16_t*>(0x11212C);
patch<uint16_t>(xpp12, 
CFSwapInt16(0xC830));

uint16_t *xpp13 = 
reinterpret_cast<uint16_t*>(0x112140);
patch<uint16_t>(xpp13, 
CFSwapInt16(0xC830));
}

if (shot) {
uint32_t *shot = 
reinterpret_cast<uint32_t*>(0x116AC);
patch<uint32_t>(shot, 
CFSwapInt16(0x010074E3));

uint32_t *shot2 = 
reinterpret_cast<uint32_t*>(0x116E4);
patch<uint32_t>(shot2, 
CFSwapInt16(0x5C8A9FED));

uint32_t *shot3 = 
reinterpret_cast<uint32_t*>(0x11790);
patch<uint32_t>(shot3, 
CFSwapInt16(0x317A9FED));

uint32_t *shot4 = 
reinterpret_cast<uint32_t*>(0x1185C);
patch<uint32_t>(shot4, 
CFSwapInt16(0x0000C842));
}
}
