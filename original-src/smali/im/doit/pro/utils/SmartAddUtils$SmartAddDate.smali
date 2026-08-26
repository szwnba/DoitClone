.class public Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;
.super Ljava/lang/Object;
.source "SmartAddUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/utils/SmartAddUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartAddDate"
.end annotation


# instance fields
.field public allDay:Z

.field public date:Ljava/util/Calendar;

.field public dateStringWithPrefix:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/utils/SmartAddUtils;

.field public type:Lim/doit/pro/utils/SmartAddUtils$SmartAddDateType;


# direct methods
.method public constructor <init>(Lim/doit/pro/utils/SmartAddUtils;)V
    .locals 1

    .prologue
    .line 18
    iput-object p1, p0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->this$0:Lim/doit/pro/utils/SmartAddUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/utils/SmartAddUtils$SmartAddDate;->allDay:Z

    return-void
.end method
