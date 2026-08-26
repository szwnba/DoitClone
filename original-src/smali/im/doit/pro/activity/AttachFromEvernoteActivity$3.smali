.class Lim/doit/pro/activity/AttachFromEvernoteActivity$3;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$3;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 380
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$3;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->finish()V

    .line 381
    return-void
.end method
