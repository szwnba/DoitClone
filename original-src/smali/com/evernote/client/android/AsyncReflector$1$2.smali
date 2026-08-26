.class Lcom/evernote/client/android/AsyncReflector$1$2;
.super Ljava/lang/Object;
.source "AsyncReflector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/AsyncReflector$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evernote/client/android/AsyncReflector$1;

.field private final synthetic val$callback:Lcom/evernote/client/android/OnClientCallback;

.field private final synthetic val$ex:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/evernote/client/android/AsyncReflector$1;Lcom/evernote/client/android/OnClientCallback;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->this$1:Lcom/evernote/client/android/AsyncReflector$1;

    iput-object p2, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    iput-object p3, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->val$ex:Ljava/lang/Exception;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->val$callback:Lcom/evernote/client/android/OnClientCallback;

    iget-object v1, p0, Lcom/evernote/client/android/AsyncReflector$1$2;->val$ex:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/OnClientCallback;->onException(Ljava/lang/Exception;)V

    .line 77
    :cond_0
    return-void
.end method
