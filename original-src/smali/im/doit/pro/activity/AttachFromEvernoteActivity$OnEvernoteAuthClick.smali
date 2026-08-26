.class Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEvernoteAuthClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;-><init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$OnEvernoteAuthClick;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v0}, Lim/doit/pro/utils/AlertDialogUtils;->showLinkEvernoteDialog(Landroid/content/Context;)V

    .line 487
    return-void
.end method
