.class Lim/doit/pro/activity/AccountInfoActivity$5;
.super Ljava/lang/Object;
.source "AccountInfoActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AccountInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AccountInfoActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AccountInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AccountInfoActivity$5;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$5;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    .line 352
    const-class v2, Lim/doit/pro/activity/UpgradeToProActivity;

    .line 351
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lim/doit/pro/activity/AccountInfoActivity$5;->this$0:Lim/doit/pro/activity/AccountInfoActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lim/doit/pro/activity/AccountInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method
