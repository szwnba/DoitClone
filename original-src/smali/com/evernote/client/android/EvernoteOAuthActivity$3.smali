.class Lcom/evernote/client/android/EvernoteOAuthActivity$3;
.super Ljava/lang/Object;
.source "EvernoteOAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/EvernoteOAuthActivity;->exit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

.field private final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/evernote/client/android/EvernoteOAuthActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    iput-boolean p2, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;->val$success:Z

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    iget-boolean v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;->val$success:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->setResult(I)V

    .line 279
    iget-object v0, p0, Lcom/evernote/client/android/EvernoteOAuthActivity$3;->this$0:Lcom/evernote/client/android/EvernoteOAuthActivity;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteOAuthActivity;->finish()V

    .line 280
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
