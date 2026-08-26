.class Lcom/evernote/client/android/AsyncReflector$1;
.super Ljava/lang/Object;
.source "AsyncReflector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/AsyncReflector;->execute(Ljava/lang/Object;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$args:[Ljava/lang/Object;

.field private final synthetic val$callback:Lcom/evernote/client/android/OnClientCallback;

.field private final synthetic val$function:Ljava/lang/String;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$receiver:Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Handler;Lcom/evernote/client/android/OnClientCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$receiver:Ljava/lang/Object;

    iput-object p3, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$function:Ljava/lang/String;

    iput-object p4, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 44
    :try_start_0
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    array-length v5, v5

    new-array v1, v5, [Ljava/lang/Class;

    .line 45
    .local v1, "classes":[Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 54
    const/4 v4, 0x0

    .line 55
    .local v4, "method":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$receiver:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 57
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$receiver:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    iget-object v6, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$function:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 63
    :goto_1
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$receiver:Ljava/lang/Object;

    iget-object v6, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "answer":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/evernote/client/android/AsyncReflector$1$1;

    iget-object v7, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    invoke-direct {v6, p0, v7, v0}, Lcom/evernote/client/android/AsyncReflector$1$1;-><init>(Lcom/evernote/client/android/AsyncReflector$1;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .end local v0    # "answer":Ljava/lang/Object;, "TT;"
    .end local v1    # "classes":[Ljava/lang/Class;
    .end local v3    # "i":I
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 47
    .restart local v1    # "classes":[Ljava/lang/Class;
    .restart local v3    # "i":I
    :cond_0
    sget-object v5, Lcom/evernote/client/android/AsyncReflector;->PRIMITIVE_MAP:Ljava/util/Map;

    iget-object v6, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    sget-object v5, Lcom/evernote/client/android/AsyncReflector;->PRIMITIVE_MAP:Ljava/util/Map;

    iget-object v6, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v1, v3

    .line 45
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$args:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 72
    .end local v1    # "classes":[Ljava/lang/Class;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 73
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/evernote/client/android/AsyncReflector$1$2;

    iget-object v7, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    invoke-direct {v6, p0, v7, v2}, Lcom/evernote/client/android/AsyncReflector$1$2;-><init>(Lcom/evernote/client/android/AsyncReflector$1;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/Exception;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 60
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "classes":[Ljava/lang/Class;
    .restart local v3    # "i":I
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$receiver:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/evernote/client/android/AsyncReflector$1;->val$function:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
