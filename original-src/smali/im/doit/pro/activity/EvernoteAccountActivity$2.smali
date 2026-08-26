.class Lim/doit/pro/activity/EvernoteAccountActivity$2;
.super Ljava/lang/Object;
.source "EvernoteAccountActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/DMessageDialog$OnButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/EvernoteAccountActivity;->showUnlinkEvernoteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/EvernoteAccountActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/EvernoteAccountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/EvernoteAccountActivity$2;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lim/doit/pro/activity/EvernoteAccountActivity$2;->this$0:Lim/doit/pro/activity/EvernoteAccountActivity;

    invoke-static {v0}, Lim/doit/pro/activity/EvernoteAccountActivity;->access$1(Lim/doit/pro/activity/EvernoteAccountActivity;)V

    .line 96
    return-void
.end method
