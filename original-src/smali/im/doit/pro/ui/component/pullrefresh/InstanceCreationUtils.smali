.class Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;
.super Ljava/lang/Object;
.source "InstanceCreationUtils.java"


# static fields
.field private static final BUILT_IN_DELEGATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "InstanceCreationUtils"

.field private static final TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 17
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    .line 22
    sget-object v0, Lim/doit/pro/ui/component/pullrefresh/AbsListViewDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    const-class v1, Lim/doit/pro/ui/component/pullrefresh/AbsListViewDelegate;

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->addBuiltinDelegates([Ljava/lang/Class;Ljava/lang/Class;)V

    .line 23
    sget-object v0, Lim/doit/pro/ui/component/pullrefresh/ScrollYDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    const-class v1, Lim/doit/pro/ui/component/pullrefresh/ScrollYDelegate;

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->addBuiltinDelegates([Ljava/lang/Class;Ljava/lang/Class;)V

    .line 24
    sget-object v0, Lim/doit/pro/ui/component/pullrefresh/WebViewDelegate;->SUPPORTED_VIEW_CLASSES:[Ljava/lang/Class;

    const-class v1, Lim/doit/pro/ui/component/pullrefresh/WebViewDelegate;

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->addBuiltinDelegates([Ljava/lang/Class;Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBuiltinDelegates([Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .param p0, "supportedViews"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "delegateClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "z":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 31
    return-void

    .line 29
    :cond_0
    sget-object v2, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    aget-object v3, p0, v0

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getBuiltInViewDelegate(Landroid/view/View;)Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 34
    sget-object v2, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->BUILT_IN_DELEGATES:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 35
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 35
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    sget-object v4, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 37
    invoke-static {v3, v2, v4, v5}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/ui/component/pullrefresh/ViewDelegate;

    goto :goto_0
.end method

.method static instantiateTransformer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->TRANSFORMER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static instantiateViewDelegate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->VIEW_DELEGATE_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lim/doit/pro/ui/component/pullrefresh/InstanceCreationUtils;->newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 51
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static varargs newInstance(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "constructorSig"    # [Ljava/lang/Class;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 68
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InstanceCreationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot instantiate class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v2, 0x0

    goto :goto_0
.end method
