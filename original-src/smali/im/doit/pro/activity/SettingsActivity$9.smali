.class Lim/doit/pro/activity/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$9;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 524
    iget-object v0, p0, Lim/doit/pro/activity/SettingsActivity$9;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SettingsActivity;->access$2(Lim/doit/pro/activity/SettingsActivity;)V

    .line 525
    return-void
.end method
