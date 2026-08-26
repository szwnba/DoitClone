.class public Lim/doit/pro/utils/SmartAddUtils$SmartAddTaskContext;
.super Ljava/lang/Object;
.source "SmartAddUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/utils/SmartAddUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartAddTaskContext"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public nameStringWithPrefix:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/utils/SmartAddUtils;


# direct methods
.method public constructor <init>(Lim/doit/pro/utils/SmartAddUtils;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lim/doit/pro/utils/SmartAddUtils$SmartAddTaskContext;->this$0:Lim/doit/pro/utils/SmartAddUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
