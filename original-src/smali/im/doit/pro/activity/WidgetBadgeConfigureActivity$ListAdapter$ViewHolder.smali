.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    .line 427
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 428
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 432
    return-void
.end method
