.class public Lcom/oplus/content/OplusFeatureConfigManager;
.super Ljava/lang/Object;
.source "OplusFeatureConfigManager.java"


# static fields
.field public static sOplusFeatureConfigManager:Lcom/oplus/content/OplusFeatureConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sOplusFeatureConfigManager:Lcom/oplus/content/OplusFeatureConfigManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/content/OplusFeatureConfigManager;
    .locals 1

    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sOplusFeatureConfigManager:Lcom/oplus/content/OplusFeatureConfigManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {v0}, Lcom/oplus/content/OplusFeatureConfigManager;-><init>()V

    sput-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sOplusFeatureConfigManager:Lcom/oplus/content/OplusFeatureConfigManager;

    :cond_0
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sOplusFeatureConfigManager:Lcom/oplus/content/OplusFeatureConfigManager;

    return-object v0
.end method


# virtual methods
.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
