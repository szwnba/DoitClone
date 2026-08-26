.class Lim/doit/pro/activity/UpgradeToProActivity$1;
.super Ljava/lang/Object;
.source "UpgradeToProActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UpgradeToProActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UpgradeToProActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UpgradeToProActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UpgradeToProActivity$1;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lim/doit/pro/activity/UpgradeToProActivity$1;->this$0:Lim/doit/pro/activity/UpgradeToProActivity;

    invoke-virtual {v1, p1}, Lim/doit/pro/activity/UpgradeToProActivity;->onBuyNowClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
