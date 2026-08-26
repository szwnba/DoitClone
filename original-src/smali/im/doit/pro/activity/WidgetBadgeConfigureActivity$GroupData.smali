.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
.super Ljava/lang/Object;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupData"
.end annotation


# instance fields
.field public dataType:Ljava/lang/String;

.field public groupType:I

.field public id:Ljava/lang/String;

.field public isCollapse:Z

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->isCollapse:Z

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->groupType:I

    .line 246
    iput-object p2, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->name:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groupType"    # I
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "dataType"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->this$0:Lim/doit/pro/activity/WidgetBadgeConfigureActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->isCollapse:Z

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->groupType:I

    .line 251
    iput-object p2, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->name:Ljava/lang/String;

    .line 252
    iput p3, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->groupType:I

    .line 253
    iput-object p4, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->id:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->dataType:Ljava/lang/String;

    .line 255
    return-void
.end method
