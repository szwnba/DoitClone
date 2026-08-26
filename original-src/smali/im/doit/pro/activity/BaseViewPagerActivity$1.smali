.class Lim/doit/pro/activity/BaseViewPagerActivity$1;
.super Ljava/lang/Object;
.source "BaseViewPagerActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnUpdateActionBarSubtitleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/BaseViewPagerActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/BaseViewPagerActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/BaseViewPagerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/BaseViewPagerActivity$1;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateActionBarSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lim/doit/pro/activity/BaseViewPagerActivity$1;->this$0:Lim/doit/pro/activity/BaseViewPagerActivity;

    invoke-virtual {v0}, Lim/doit/pro/activity/BaseViewPagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method
