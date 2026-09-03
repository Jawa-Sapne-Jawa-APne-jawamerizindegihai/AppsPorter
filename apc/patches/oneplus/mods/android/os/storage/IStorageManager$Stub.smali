.class public abstract Landroid/os/storage/IStorageManager$Stub;
.super Landroid/os/Binder;
.source "IStorageManager.java"

# interfaces
.implements Landroid/os/storage/IStorageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.storage.IStorageManager"

.field static final TRANSACTION_abortChanges:I = 0x58

.field static final TRANSACTION_abortIdleMaintenance:I = 0x51

.field static final TRANSACTION_allocateBytes:I = 0x4f

.field static final TRANSACTION_benchmark:I = 0x3c

.field static final TRANSACTION_clearCache:I = 0x65

.field static final TRANSACTION_commitChanges:I = 0x54

.field static final TRANSACTION_createUserKey:I = 0x3e

.field static final TRANSACTION_destroyUserKey:I = 0x3f

.field static final TRANSACTION_destroyUserStorage:I = 0x44

.field static final TRANSACTION_disableAppDataIsolation:I = 0x5b

.field static final TRANSACTION_fixupAppDir:I = 0x5a

.field static final TRANSACTION_forgetAllVolumes:I = 0x39

.field static final TRANSACTION_forgetVolume:I = 0x38

.field static final TRANSACTION_format:I = 0x32

.field static final TRANSACTION_fstrim:I = 0x49

.field static final TRANSACTION_getAllocatableBytes:I = 0x4e

.field static final TRANSACTION_getCacheQuotaBytes:I = 0x4c

.field static final TRANSACTION_getCacheSizeBytes:I = 0x4d

.field static final TRANSACTION_getCloudMediaProvider:I = 0x62

.field static final TRANSACTION_getDisks:I = 0x2d

.field static final TRANSACTION_getExternalStorageMountMode:I = 0x5f

.field static final TRANSACTION_getManageSpaceActivityIntent:I = 0x5c

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPrimaryStorageUuid:I = 0x3a

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeRecords:I = 0x2f

.field static final TRANSACTION_getVolumes:I = 0x2e

.field static final TRANSACTION_isAppIoBlocked:I = 0x60

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isUserKeyUnlocked:I = 0x42

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_lockUserKey:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mount:I = 0x30

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountProxyFileDescriptorBridge:I = 0x4a

.field static final TRANSACTION_mountTime:I = 0x67

.field static final TRANSACTION_needsCheckpoint:I = 0x57

.field static final TRANSACTION_notifyAppIoBlocked:I = 0x5d

.field static final TRANSACTION_notifyAppIoResumed:I = 0x5e

.field static final TRANSACTION_openProxyFileDescriptor:I = 0x4b

.field static final TRANSACTION_partitionMixed:I = 0x35

.field static final TRANSACTION_partitionPrivate:I = 0x34

.field static final TRANSACTION_partitionPublic:I = 0x33

.field static final TRANSACTION_prepareUserStorage:I = 0x43

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_runIdleMaintenance:I = 0x50

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_runTBExt:I = 0x66

.field static final TRANSACTION_setCloudMediaProvider:I = 0x61

.field static final TRANSACTION_setDebugFlags:I = 0x3d

.field static final TRANSACTION_setPrimaryStorageUuid:I = 0x3b

.field static final TRANSACTION_setUserKeyProtection:I = 0x47

.field static final TRANSACTION_setVolumeNickname:I = 0x36

.field static final TRANSACTION_setVolumeUserFlags:I = 0x37

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_startCheckpoint:I = 0x56

.field static final TRANSACTION_startserviceAppFuse:I = 0x63

.field static final TRANSACTION_stopserviceAppFuse:I = 0x64

.field static final TRANSACTION_supportsCheckpoint:I = 0x55

.field static final TRANSACTION_unlockUserKey:I = 0x40

.field static final TRANSACTION_unmount:I = 0x31

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unregisterListener:I = 0x2


# instance fields
.field private final mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/storage/IStorageManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.storage.IStorageManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IStorageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.storage.IStorageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IStorageManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/storage/IStorageManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/storage/IStorageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IStorageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "mountTime"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "runTBExt"

    return-object v0

    :pswitch_3
    const-string v0, "clearCache"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "stopserviceAppFuse"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "startserviceAppFuse"

    return-object v0

    :pswitch_6
    const-string v0, "getCloudMediaProvider"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setCloudMediaProvider"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "isAppIoBlocked"

    return-object v0

    :pswitch_9
    const-string v0, "getExternalStorageMountMode"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "notifyAppIoResumed"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "notifyAppIoBlocked"

    return-object v0

    :pswitch_c
    const-string v0, "getManageSpaceActivityIntent"

    return-object v0

    :pswitch_d
    const-string v0, "disableAppDataIsolation"

    return-object v0

    :pswitch_e
    const-string v0, "fixupAppDir"

    return-object v0

    :pswitch_f
    const-string v0, "abortChanges"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "needsCheckpoint"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "startCheckpoint"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "supportsCheckpoint"

    return-object v0

    :pswitch_13
    const-string v0, "commitChanges"

    return-object v0

    :pswitch_14
    const-string v0, "abortIdleMaintenance"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "runIdleMaintenance"

    return-object v0

    :pswitch_16
    const-string v0, "allocateBytes"

    return-object v0

    :pswitch_17
    const-string v0, "getAllocatableBytes"

    return-object v0

    :pswitch_18
    const-string v0, "getCacheSizeBytes"

    return-object v0

    :pswitch_19
    const-string v0, "getCacheQuotaBytes"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "openProxyFileDescriptor"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "mountProxyFileDescriptorBridge"

    return-object v0

    :pswitch_1c
    const-string v0, "fstrim"

    return-object v0

    :pswitch_1d
    const-string/jumbo v0, "setUserKeyProtection"

    return-object v0

    :pswitch_1e
    const-string v0, "destroyUserStorage"

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "prepareUserStorage"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "isUserKeyUnlocked"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "lockUserKey"

    return-object v0

    :pswitch_22
    const-string/jumbo v0, "unlockUserKey"

    return-object v0

    :pswitch_23
    const-string v0, "destroyUserKey"

    return-object v0

    :pswitch_24
    const-string v0, "createUserKey"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "setDebugFlags"

    return-object v0

    :pswitch_26
    const-string v0, "benchmark"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "setPrimaryStorageUuid"

    return-object v0

    :pswitch_28
    const-string v0, "getPrimaryStorageUuid"

    return-object v0

    :pswitch_29
    const-string v0, "forgetAllVolumes"

    return-object v0

    :pswitch_2a
    const-string v0, "forgetVolume"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "setVolumeUserFlags"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "setVolumeNickname"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "partitionMixed"

    return-object v0

    :pswitch_2e
    const-string/jumbo v0, "partitionPrivate"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "partitionPublic"

    return-object v0

    :pswitch_30
    const-string v0, "format"

    return-object v0

    :pswitch_31
    const-string/jumbo v0, "unmount"

    return-object v0

    :pswitch_32
    const-string/jumbo v0, "mount"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "getVolumeRecords"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "getVolumes"

    return-object v0

    :pswitch_35
    const-string v0, "getDisks"

    return-object v0

    :pswitch_36
    const-string/jumbo v0, "runMaintenance"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "lastMaintenance"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "mkdirs"

    return-object v0

    :pswitch_39
    const-string/jumbo v0, "getVolumeList"

    return-object v0

    :pswitch_3a
    const-string v0, "getMountedObbPath"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "isObbMounted"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "unmountObb"

    return-object v0

    :pswitch_3d
    const-string/jumbo v0, "mountObb"

    return-object v0

    :pswitch_3e
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "registerListener"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3e
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_36
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected benchmark_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected createUserKey_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected destroyUserKey_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected destroyUserStorage_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected forgetAllVolumes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected forgetVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected format_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected fstrim_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected getExternalStorageMountMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/storage/IStorageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected lockUserKey_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected mount_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected needsCheckpoint_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.storage.IStorageManager"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->mountTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runTBExt()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->clearCache()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->stopserviceAppFuse()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->startserviceAppFuse()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getCloudMediaProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->setCloudMediaProvider(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->isAppIoBlocked(Ljava/lang/String;III)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoResumed(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->notifyAppIoBlocked(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->disableAppDataIsolation(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->fixupAppDir(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->abortChanges(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->startCheckpoint(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->supportsCheckpoint()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->commitChanges()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->abortIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runIdleMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheSizeBytes(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setUserKeyProtection(I[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isUserKeyUnlocked(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->lockUserKey(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->unlockUserKey(II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserKey(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->createUserKey(IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->format(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unmount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->mount(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IStorageManager$Stub;->lastMaintenance()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/storage/IStorageManager$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/storage/IStorageManager$Stub;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/storage/IStorageManager$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/content/res/ObbInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/res/ObbInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/IStorageManager$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageShutdownObserver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->shutdown(Landroid/os/storage/IStorageShutdownObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageEventListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/storage/IStorageManager$Stub;->registerListener(Landroid/os/storage/IStorageEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_0
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected partitionMixed_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected partitionPrivate_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected partitionPublic_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected prepareUserStorage_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected runMaintenance_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected setDebugFlags_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected setPrimaryStorageUuid_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected setUserKeyProtection_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected setVolumeNickname_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected setVolumeUserFlags_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected shutdown_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected unlockUserKey_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.STORAGE_INTERNAL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method

.method protected unmount_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/storage/IStorageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/storage/IStorageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    return-void
.end method
