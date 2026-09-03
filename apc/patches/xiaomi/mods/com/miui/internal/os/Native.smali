.class public Lcom/miui/internal/os/Native;
.super Ljava/lang/Object;
.source "Native.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPropertyChangeCallbackNative(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public static chmod(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static chown(Ljava/lang/String;III)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getBooleanFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getBooleanPropertyNative(Ljava/lang/String;Z)Z
    .locals 0

    return p1
.end method

.method public static getByteFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getCharFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getConstructor(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Constructor;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getConstructor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)Lmiui/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lmiui/reflect/Constructor;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConstructor(Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Constructor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConstructor(Ljava/lang/reflect/Constructor;)Lmiui/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lmiui/reflect/Constructor;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lmiui/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/miui/internal/os/Native;->getConstructor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)Lmiui/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static getDoubleFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/reflect/Field;)Lmiui/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lmiui/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getField(Ljava/lang/reflect/Field;)Lmiui/reflect/Field;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lmiui/reflect/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/os/Native;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/reflect/Field;)Lmiui/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getFloatFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getIntFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getIntPropertyNative(Ljava/lang/String;I)I
    .locals 0

    return p1
.end method

.method public static getLongFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getLongPropertyNative(Ljava/lang/String;J)J
    .locals 0

    return-wide p1
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/reflect/Method;)Lmiui/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lmiui/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMethod(Ljava/lang/reflect/Method;)Lmiui/reflect/Method;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/reflect/Method;)Lmiui/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPropertyNative(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReflectConstructor(Lmiui/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>; "
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReflectField(Lmiui/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReflectMethod(Lmiui/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShortFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;)S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static invoke(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public static invokeBoolean(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static invokeByte(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")B"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static invokeChar(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")C"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static invokeDouble(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static invokeFloat(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")F"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static invokeInt(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static invokeLong(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static invokeObject(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static invokeShort(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")S"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static newInstance(Lmiui/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static rm(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;B)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;C)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;D)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;F)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;S)V
    .locals 0

    return-void
.end method

.method public static setFieldValue(Lmiui/reflect/Field;Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public static setPropertyNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static umask(I)I
    .locals 0

    return p0
.end method
