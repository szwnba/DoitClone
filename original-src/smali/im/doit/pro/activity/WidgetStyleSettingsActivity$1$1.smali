.class Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;
.super Ljava/lang/Object;
.source "WidgetStyleSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;->this$1:Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;->this$1:Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->access$0(Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;)Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->access$1(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)[F

    move-result-object v0

    aget v0, v0, p2

    invoke-static {v0}, Lim/doit/pro/utils/LocalSettings;->saveWidgetFontScale(F)V

    .line 147
    iget-object v0, p0, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1$1;->this$1:Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;

    invoke-static {v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;->access$0(Lim/doit/pro/activity/WidgetStyleSettingsActivity$1;)Lim/doit/pro/activity/WidgetStyleSettingsActivity;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/activity/WidgetStyleSettingsActivity;->access$2(Lim/doit/pro/activity/WidgetStyleSettingsActivity;)V

    .line 148
    return-void
.end method
