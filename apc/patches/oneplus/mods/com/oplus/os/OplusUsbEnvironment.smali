.class public Lcom/oplus/os/OplusUsbEnvironment;
.super Landroid/os/Environment;
.source "OplusUsbEnvironment.java"


# static fields
.field private static final DEFAULT_INTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/0"

.field public static final EXTERNAL:I = 0x2

.field public static final INTERNAL:I = 0x1

.field private static final MULTIAPP_INTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/999"

.field public static final NONE:I = -0x1

.field public static final OTG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OppoUsbEnvironmentSys"

.field private static sAyraMountService:Layra/os/storage/IStorageManager;

.field private static sExternalSdDir:Ljava/lang/String;

.field private static sInited:Z

.field private static sInternalSdDir:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sMountService:Landroid/os/storage/IStorageManager;

.field private static sOtgPathes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStorageListener:Landroid/os/storage/StorageEventListener;

.field private static sVolumeStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    const-string v0, "/storage/emulated/0"

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/os/OplusUsbEnvironment$1;

    invoke-direct {v0}, Lcom/oplus/os/OplusUsbEnvironment$1;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sVolumeStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/os/OplusUsbEnvironment$2;

    invoke-direct {v0}, Lcom/oplus/os/OplusUsbEnvironment$2;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/oplus/os/OplusUsbEnvironment;->getVolumes()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getExternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v1, "unknown"

    return-object v1

    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string v2, "unknown"

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v1, "unknown"

    return-object v1

    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string v2, "unknown"

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getMultiappSdDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "/storage/emulated/999"

    return-object v0
.end method

.method public static getOtgPath(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPathType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    const/4 v1, -0x1

    if-nez p1, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_1
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    monitor-exit v0

    return v1

    :cond_2
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    monitor-exit v0

    return v1

    :cond_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getVolumes()V
    .locals 9

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sAyraMountService:Layra/os/storage/IStorageManager;

    const-string v1, "OppoUsbEnvironmentSys"

    if-nez v0, :cond_0

    const-string v0, "getVolumes: sAyraMountService is null!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Layra/os/storage/IStorageManager;->getVolumes(I)[Layra/os/storage/VolumeInfo;

    move-result-object v0

    const/4 v3, 0x0

    sput-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    iget-object v5, v4, Layra/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iget v6, v4, Layra/os/storage/VolumeInfo;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v5, :cond_3

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sInternalSdDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Layra/os/storage/VolumeInfo;->getDisk()Layra/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Layra/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    sput-object v5, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sExternalSdDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v6}, Layra/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v5, :cond_3

    sget-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sOtgPathes.add="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    return-void
.end method

.method public static isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "unknown"

    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "OppoUsbEnvironmentSys"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExternalSDRemoved: the state of volume is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "removed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static isNestMounted()Z
    .locals 4

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "mounted"

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static update(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_0

    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    :cond_0
    sget-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    invoke-static {}, Lcom/oplus/os/OplusUsbEnvironment;->getVolumes()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    nop

    const-string v2, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "OppoUsbEnvironmentSys"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Lcom/oplus/os/OplusUsbEnvironment;->sVolumeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v4, "update: registerReceiver sVolumeStateReceiver"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: hasPerm WRITE_MEDIA_STORAGE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contextApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/oplus/os/OplusUsbEnvironment;->sStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    const-string v4, "update: registerListener sStorageListener"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method
