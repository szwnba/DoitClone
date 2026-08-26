.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
.super Ljava/lang/Object;
.source "WidgetSelectBox3x3ConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;
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

.field final synthetic this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->isCollapse:Z

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->groupType:I

    .line 244
    iput-object p2, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->name:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groupType"    # I
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "dataType"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->this$0:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->isCollapse:Z

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->groupType:I

    .line 249
    iput-object p2, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->name:Ljava/lang/String;

    .line 250
    iput p3, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->groupType:I

    .line 251
    iput-object p4, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->id:Ljava/lang/String;

    .line 252
    iput-object p5, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->dataType:Ljava/lang/String;

    .line 253
    return-void
.end method
