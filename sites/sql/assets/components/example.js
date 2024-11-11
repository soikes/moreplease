(() => {
  var __create = Object.create;
  var __defProp = Object.defineProperty;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __getOwnPropNames = Object.getOwnPropertyNames;
  var __getProtoOf = Object.getPrototypeOf;
  var __hasOwnProp = Object.prototype.hasOwnProperty;
  var __require = /* @__PURE__ */ ((x2) => typeof require !== "undefined" ? require : typeof Proxy !== "undefined" ? new Proxy(x2, {
    get: (a3, b3) => (typeof require !== "undefined" ? require : a3)[b3]
  }) : x2)(function(x2) {
    if (typeof require !== "undefined") return require.apply(this, arguments);
    throw Error('Dynamic require of "' + x2 + '" is not supported');
  });
  var __commonJS = (cb, mod) => function __require2() {
    return mod || (0, cb[__getOwnPropNames(cb)[0]])((mod = { exports: {} }).exports, mod), mod.exports;
  };
  var __copyProps = (to, from, except, desc) => {
    if (from && typeof from === "object" || typeof from === "function") {
      for (let key of __getOwnPropNames(from))
        if (!__hasOwnProp.call(to, key) && key !== except)
          __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
    }
    return to;
  };
  var __toESM = (mod, isNodeMode, target) => (target = mod != null ? __create(__getProtoOf(mod)) : {}, __copyProps(
    // If the importer is in node compatibility mode or this is not an ESM
    // file that has been converted to a CommonJS file using a Babel-
    // compatible transform (i.e. "__esModule" has not been set), then set
    // "default" to the CommonJS "module.exports" for node compatibility.
    isNodeMode || !mod || !mod.__esModule ? __defProp(target, "default", { value: mod, enumerable: true }) : target,
    mod
  ));
  var __decorateClass = (decorators, target, key, kind) => {
    var result = kind > 1 ? void 0 : kind ? __getOwnPropDesc(target, key) : target;
    for (var i6 = decorators.length - 1, decorator; i6 >= 0; i6--)
      if (decorator = decorators[i6])
        result = (kind ? decorator(target, key, result) : decorator(result)) || result;
    if (kind && result) __defProp(target, key, result);
    return result;
  };

  // www/node_modules/.pnpm/sql.js@1.12.0/node_modules/sql.js/dist/sql-wasm.js
  var require_sql_wasm = __commonJS({
    "www/node_modules/.pnpm/sql.js@1.12.0/node_modules/sql.js/dist/sql-wasm.js"(exports, module) {
      var initSqlJsPromise = void 0;
      var initSqlJs2 = function(moduleConfig) {
        if (initSqlJsPromise) {
          return initSqlJsPromise;
        }
        initSqlJsPromise = new Promise(function(resolveModule, reject) {
          var Module = typeof moduleConfig !== "undefined" ? moduleConfig : {};
          var originalOnAbortFunction = Module["onAbort"];
          Module["onAbort"] = function(errorThatCausedAbort) {
            reject(new Error(errorThatCausedAbort));
            if (originalOnAbortFunction) {
              originalOnAbortFunction(errorThatCausedAbort);
            }
          };
          Module["postRun"] = Module["postRun"] || [];
          Module["postRun"].push(function() {
            resolveModule(Module);
          });
          module = void 0;
          var f3;
          f3 ||= typeof Module != "undefined" ? Module : {};
          var aa = "object" == typeof window, ba = "function" == typeof importScripts, ca = "object" == typeof process && "object" == typeof process.versions && "string" == typeof process.versions.node;
          "use strict";
          f3.onRuntimeInitialized = function() {
            function a3(g2, l3) {
              switch (typeof l3) {
                case "boolean":
                  fc(g2, l3 ? 1 : 0);
                  break;
                case "number":
                  gc(g2, l3);
                  break;
                case "string":
                  hc(g2, l3, -1, -1);
                  break;
                case "object":
                  if (null === l3) ib(g2);
                  else if (null != l3.length) {
                    var n5 = da(l3, ea);
                    ic(g2, n5, l3.length, -1);
                    fa(n5);
                  } else xa(g2, "Wrong API use : tried to return a value of an unknown type (" + l3 + ").", -1);
                  break;
                default:
                  ib(g2);
              }
            }
            function b3(g2, l3) {
              for (var n5 = [], t4 = 0; t4 < g2; t4 += 1) {
                var w2 = m2(l3 + 4 * t4, "i32"), A2 = jc(w2);
                if (1 === A2 || 2 === A2) w2 = kc(w2);
                else if (3 === A2) w2 = lc(w2);
                else if (4 === A2) {
                  A2 = w2;
                  w2 = mc(A2);
                  A2 = nc(A2);
                  for (var N2 = new Uint8Array(w2), M2 = 0; M2 < w2; M2 += 1) N2[M2] = p3[A2 + M2];
                  w2 = N2;
                } else w2 = null;
                n5.push(w2);
              }
              return n5;
            }
            function c4(g2, l3) {
              this.Ka = g2;
              this.db = l3;
              this.Ia = 1;
              this.eb = [];
            }
            function d3(g2, l3) {
              this.db = l3;
              l3 = ha(g2) + 1;
              this.Xa = ia(l3);
              if (null === this.Xa) throw Error("Unable to allocate memory for the SQL string");
              q(g2, u3, this.Xa, l3);
              this.cb = this.Xa;
              this.Ta = this.hb = null;
            }
            function e5(g2) {
              this.filename = "dbfile_" + (4294967295 * Math.random() >>> 0);
              if (null != g2) {
                var l3 = this.filename, n5 = "/", t4 = l3;
                n5 && (n5 = "string" == typeof n5 ? n5 : ja(n5), t4 = l3 ? x2(n5 + "/" + l3) : n5);
                l3 = ka(true, true);
                t4 = la(t4, (void 0 !== l3 ? l3 : 438) & 4095 | 32768, 0);
                if (g2) {
                  if ("string" == typeof g2) {
                    n5 = Array(g2.length);
                    for (var w2 = 0, A2 = g2.length; w2 < A2; ++w2) n5[w2] = g2.charCodeAt(w2);
                    g2 = n5;
                  }
                  ma(t4, l3 | 146);
                  n5 = na(t4, 577);
                  oa(n5, g2, 0, g2.length, 0);
                  pa(n5);
                  ma(t4, l3);
                }
              }
              this.handleError(r7(this.filename, h4));
              this.db = m2(h4, "i32");
              lb(this.db);
              this.Ya = {};
              this.Ma = {};
            }
            var h4 = y3(4), k2 = f3.cwrap, r7 = k2("sqlite3_open", "number", ["string", "number"]), z2 = k2("sqlite3_close_v2", "number", ["number"]), v2 = k2("sqlite3_exec", "number", ["number", "string", "number", "number", "number"]), E2 = k2(
              "sqlite3_changes",
              "number",
              ["number"]
            ), H2 = k2("sqlite3_prepare_v2", "number", ["number", "string", "number", "number", "number"]), mb = k2("sqlite3_sql", "string", ["number"]), oc = k2("sqlite3_normalized_sql", "string", ["number"]), nb = k2("sqlite3_prepare_v2", "number", ["number", "number", "number", "number", "number"]), pc = k2("sqlite3_bind_text", "number", ["number", "number", "number", "number", "number"]), ob = k2("sqlite3_bind_blob", "number", ["number", "number", "number", "number", "number"]), qc = k2("sqlite3_bind_double", "number", ["number", "number", "number"]), rc = k2("sqlite3_bind_int", "number", ["number", "number", "number"]), sc = k2("sqlite3_bind_parameter_index", "number", ["number", "string"]), tc = k2("sqlite3_step", "number", ["number"]), uc = k2("sqlite3_errmsg", "string", ["number"]), vc = k2("sqlite3_column_count", "number", ["number"]), wc = k2("sqlite3_data_count", "number", ["number"]), xc = k2("sqlite3_column_double", "number", ["number", "number"]), pb = k2("sqlite3_column_text", "string", ["number", "number"]), yc = k2("sqlite3_column_blob", "number", ["number", "number"]), zc = k2(
              "sqlite3_column_bytes",
              "number",
              ["number", "number"]
            ), Ac = k2("sqlite3_column_type", "number", ["number", "number"]), Bc = k2("sqlite3_column_name", "string", ["number", "number"]), Cc = k2("sqlite3_reset", "number", ["number"]), Dc = k2("sqlite3_clear_bindings", "number", ["number"]), Ec = k2("sqlite3_finalize", "number", ["number"]), qb = k2("sqlite3_create_function_v2", "number", "number string number number number number number number number".split(" ")), jc = k2("sqlite3_value_type", "number", ["number"]), mc = k2("sqlite3_value_bytes", "number", ["number"]), lc = k2(
              "sqlite3_value_text",
              "string",
              ["number"]
            ), nc = k2("sqlite3_value_blob", "number", ["number"]), kc = k2("sqlite3_value_double", "number", ["number"]), gc = k2("sqlite3_result_double", "", ["number", "number"]), ib = k2("sqlite3_result_null", "", ["number"]), hc = k2("sqlite3_result_text", "", ["number", "string", "number", "number"]), ic = k2("sqlite3_result_blob", "", ["number", "number", "number", "number"]), fc = k2("sqlite3_result_int", "", ["number", "number"]), xa = k2("sqlite3_result_error", "", ["number", "string", "number"]), rb = k2(
              "sqlite3_aggregate_context",
              "number",
              ["number", "number"]
            ), lb = k2("RegisterExtensionFunctions", "number", ["number"]);
            c4.prototype.bind = function(g2) {
              if (!this.Ka) throw "Statement closed";
              this.reset();
              return Array.isArray(g2) ? this.vb(g2) : null != g2 && "object" === typeof g2 ? this.wb(g2) : true;
            };
            c4.prototype.step = function() {
              if (!this.Ka) throw "Statement closed";
              this.Ia = 1;
              var g2 = tc(this.Ka);
              switch (g2) {
                case 100:
                  return true;
                case 101:
                  return false;
                default:
                  throw this.db.handleError(g2);
              }
            };
            c4.prototype.qb = function(g2) {
              null == g2 && (g2 = this.Ia, this.Ia += 1);
              return xc(this.Ka, g2);
            };
            c4.prototype.zb = function(g2) {
              null == g2 && (g2 = this.Ia, this.Ia += 1);
              g2 = pb(this.Ka, g2);
              if ("function" !== typeof BigInt) throw Error("BigInt is not supported");
              return BigInt(g2);
            };
            c4.prototype.Ab = function(g2) {
              null == g2 && (g2 = this.Ia, this.Ia += 1);
              return pb(this.Ka, g2);
            };
            c4.prototype.getBlob = function(g2) {
              null == g2 && (g2 = this.Ia, this.Ia += 1);
              var l3 = zc(this.Ka, g2);
              g2 = yc(this.Ka, g2);
              for (var n5 = new Uint8Array(l3), t4 = 0; t4 < l3; t4 += 1) n5[t4] = p3[g2 + t4];
              return n5;
            };
            c4.prototype.get = function(g2, l3) {
              l3 = l3 || {};
              null != g2 && this.bind(g2) && this.step();
              g2 = [];
              for (var n5 = wc(this.Ka), t4 = 0; t4 < n5; t4 += 1) switch (Ac(this.Ka, t4)) {
                case 1:
                  var w2 = l3.useBigInt ? this.zb(t4) : this.qb(t4);
                  g2.push(w2);
                  break;
                case 2:
                  g2.push(this.qb(t4));
                  break;
                case 3:
                  g2.push(this.Ab(t4));
                  break;
                case 4:
                  g2.push(this.getBlob(t4));
                  break;
                default:
                  g2.push(null);
              }
              return g2;
            };
            c4.prototype.getColumnNames = function() {
              for (var g2 = [], l3 = vc(this.Ka), n5 = 0; n5 < l3; n5 += 1) g2.push(Bc(this.Ka, n5));
              return g2;
            };
            c4.prototype.getAsObject = function(g2, l3) {
              g2 = this.get(g2, l3);
              l3 = this.getColumnNames();
              for (var n5 = {}, t4 = 0; t4 < l3.length; t4 += 1) n5[l3[t4]] = g2[t4];
              return n5;
            };
            c4.prototype.getSQL = function() {
              return mb(this.Ka);
            };
            c4.prototype.getNormalizedSQL = function() {
              return oc(this.Ka);
            };
            c4.prototype.run = function(g2) {
              null != g2 && this.bind(g2);
              this.step();
              return this.reset();
            };
            c4.prototype.mb = function(g2, l3) {
              null == l3 && (l3 = this.Ia, this.Ia += 1);
              g2 = qa(g2);
              var n5 = da(g2, ea);
              this.eb.push(n5);
              this.db.handleError(pc(this.Ka, l3, n5, g2.length - 1, 0));
            };
            c4.prototype.ub = function(g2, l3) {
              null == l3 && (l3 = this.Ia, this.Ia += 1);
              var n5 = da(g2, ea);
              this.eb.push(n5);
              this.db.handleError(ob(this.Ka, l3, n5, g2.length, 0));
            };
            c4.prototype.lb = function(g2, l3) {
              null == l3 && (l3 = this.Ia, this.Ia += 1);
              this.db.handleError((g2 === (g2 | 0) ? rc : qc)(this.Ka, l3, g2));
            };
            c4.prototype.xb = function(g2) {
              null == g2 && (g2 = this.Ia, this.Ia += 1);
              ob(this.Ka, g2, 0, 0, 0);
            };
            c4.prototype.nb = function(g2, l3) {
              null == l3 && (l3 = this.Ia, this.Ia += 1);
              switch (typeof g2) {
                case "string":
                  this.mb(g2, l3);
                  return;
                case "number":
                  this.lb(g2, l3);
                  return;
                case "bigint":
                  this.mb(g2.toString(), l3);
                  return;
                case "boolean":
                  this.lb(g2 + 0, l3);
                  return;
                case "object":
                  if (null === g2) {
                    this.xb(l3);
                    return;
                  }
                  if (null != g2.length) {
                    this.ub(g2, l3);
                    return;
                  }
              }
              throw "Wrong API use : tried to bind a value of an unknown type (" + g2 + ").";
            };
            c4.prototype.wb = function(g2) {
              var l3 = this;
              Object.keys(g2).forEach(function(n5) {
                var t4 = sc(l3.Ka, n5);
                0 !== t4 && l3.nb(g2[n5], t4);
              });
              return true;
            };
            c4.prototype.vb = function(g2) {
              for (var l3 = 0; l3 < g2.length; l3 += 1) this.nb(g2[l3], l3 + 1);
              return true;
            };
            c4.prototype.reset = function() {
              this.freemem();
              return 0 === Dc(this.Ka) && 0 === Cc(this.Ka);
            };
            c4.prototype.freemem = function() {
              for (var g2; void 0 !== (g2 = this.eb.pop()); ) fa(g2);
            };
            c4.prototype.free = function() {
              this.freemem();
              var g2 = 0 === Ec(this.Ka);
              delete this.db.Ya[this.Ka];
              this.Ka = 0;
              return g2;
            };
            d3.prototype.next = function() {
              if (null === this.Xa) return { done: true };
              null !== this.Ta && (this.Ta.free(), this.Ta = null);
              if (!this.db.db) throw this.fb(), Error("Database closed");
              var g2 = ra(), l3 = y3(4);
              sa(h4);
              sa(l3);
              try {
                this.db.handleError(nb(this.db.db, this.cb, -1, h4, l3));
                this.cb = m2(l3, "i32");
                var n5 = m2(h4, "i32");
                if (0 === n5) return this.fb(), { done: true };
                this.Ta = new c4(n5, this.db);
                this.db.Ya[n5] = this.Ta;
                return { value: this.Ta, done: false };
              } catch (t4) {
                throw this.hb = ta(this.cb), this.fb(), t4;
              } finally {
                ua(g2);
              }
            };
            d3.prototype.fb = function() {
              fa(this.Xa);
              this.Xa = null;
            };
            d3.prototype.getRemainingSQL = function() {
              return null !== this.hb ? this.hb : ta(this.cb);
            };
            "function" === typeof Symbol && "symbol" === typeof Symbol.iterator && (d3.prototype[Symbol.iterator] = function() {
              return this;
            });
            e5.prototype.run = function(g2, l3) {
              if (!this.db) throw "Database closed";
              if (l3) {
                g2 = this.prepare(g2, l3);
                try {
                  g2.step();
                } finally {
                  g2.free();
                }
              } else this.handleError(v2(this.db, g2, 0, 0, h4));
              return this;
            };
            e5.prototype.exec = function(g2, l3, n5) {
              if (!this.db) throw "Database closed";
              var t4 = ra(), w2 = null;
              try {
                var A2 = va(g2), N2 = y3(4);
                for (g2 = []; 0 !== m2(A2, "i8"); ) {
                  sa(h4);
                  sa(N2);
                  this.handleError(nb(
                    this.db,
                    A2,
                    -1,
                    h4,
                    N2
                  ));
                  var M2 = m2(h4, "i32");
                  A2 = m2(N2, "i32");
                  if (0 !== M2) {
                    var K = null;
                    w2 = new c4(M2, this);
                    for (null != l3 && w2.bind(l3); w2.step(); ) null === K && (K = { columns: w2.getColumnNames(), values: [] }, g2.push(K)), K.values.push(w2.get(null, n5));
                    w2.free();
                  }
                }
                return g2;
              } catch (O) {
                throw w2 && w2.free(), O;
              } finally {
                ua(t4);
              }
            };
            e5.prototype.each = function(g2, l3, n5, t4, w2) {
              "function" === typeof l3 && (t4 = n5, n5 = l3, l3 = void 0);
              g2 = this.prepare(g2, l3);
              try {
                for (; g2.step(); ) n5(g2.getAsObject(null, w2));
              } finally {
                g2.free();
              }
              if ("function" === typeof t4) return t4();
            };
            e5.prototype.prepare = function(g2, l3) {
              sa(h4);
              this.handleError(H2(this.db, g2, -1, h4, 0));
              g2 = m2(h4, "i32");
              if (0 === g2) throw "Nothing to prepare";
              var n5 = new c4(g2, this);
              null != l3 && n5.bind(l3);
              return this.Ya[g2] = n5;
            };
            e5.prototype.iterateStatements = function(g2) {
              return new d3(g2, this);
            };
            e5.prototype["export"] = function() {
              Object.values(this.Ya).forEach(function(l3) {
                l3.free();
              });
              Object.values(this.Ma).forEach(wa);
              this.Ma = {};
              this.handleError(z2(this.db));
              var g2 = ya(this.filename);
              this.handleError(r7(this.filename, h4));
              this.db = m2(h4, "i32");
              lb(this.db);
              return g2;
            };
            e5.prototype.close = function() {
              null !== this.db && (Object.values(this.Ya).forEach(function(g2) {
                g2.free();
              }), Object.values(this.Ma).forEach(wa), this.Ma = {}, this.handleError(z2(this.db)), za("/" + this.filename), this.db = null);
            };
            e5.prototype.handleError = function(g2) {
              if (0 === g2) return null;
              g2 = uc(this.db);
              throw Error(g2);
            };
            e5.prototype.getRowsModified = function() {
              return E2(this.db);
            };
            e5.prototype.create_function = function(g2, l3) {
              Object.prototype.hasOwnProperty.call(this.Ma, g2) && (wa(this.Ma[g2]), delete this.Ma[g2]);
              var n5 = Aa(function(t4, w2, A2) {
                w2 = b3(w2, A2);
                try {
                  var N2 = l3.apply(
                    null,
                    w2
                  );
                } catch (M2) {
                  xa(t4, M2, -1);
                  return;
                }
                a3(t4, N2);
              }, "viii");
              this.Ma[g2] = n5;
              this.handleError(qb(this.db, g2, l3.length, 1, 0, n5, 0, 0, 0));
              return this;
            };
            e5.prototype.create_aggregate = function(g2, l3) {
              var n5 = l3.init || function() {
                return null;
              }, t4 = l3.finalize || function(K) {
                return K;
              }, w2 = l3.step;
              if (!w2) throw "An aggregate function must have a step function in " + g2;
              var A2 = {};
              Object.hasOwnProperty.call(this.Ma, g2) && (wa(this.Ma[g2]), delete this.Ma[g2]);
              l3 = g2 + "__finalize";
              Object.hasOwnProperty.call(this.Ma, l3) && (wa(this.Ma[l3]), delete this.Ma[l3]);
              var N2 = Aa(function(K, O, Ra) {
                var Y = rb(K, 1);
                Object.hasOwnProperty.call(A2, Y) || (A2[Y] = n5());
                O = b3(O, Ra);
                O = [A2[Y]].concat(O);
                try {
                  A2[Y] = w2.apply(null, O);
                } catch (Gc) {
                  delete A2[Y], xa(K, Gc, -1);
                }
              }, "viii"), M2 = Aa(function(K) {
                var O = rb(K, 1);
                try {
                  var Ra = t4(A2[O]);
                } catch (Y) {
                  delete A2[O];
                  xa(K, Y, -1);
                  return;
                }
                a3(K, Ra);
                delete A2[O];
              }, "vi");
              this.Ma[g2] = N2;
              this.Ma[l3] = M2;
              this.handleError(qb(this.db, g2, w2.length - 1, 1, 0, 0, N2, M2, 0));
              return this;
            };
            f3.Database = e5;
          };
          var Ba = Object.assign({}, f3), Ca = "./this.program", B2 = "", Da, Ea;
          if (ca) {
            var fs = __require("fs"), Fa = __require("path");
            B2 = __dirname + "/";
            Ea = (a3) => {
              a3 = Ga(a3) ? new URL(a3) : Fa.normalize(a3);
              return fs.readFileSync(a3);
            };
            Da = (a3) => {
              a3 = Ga(a3) ? new URL(a3) : Fa.normalize(a3);
              return new Promise((b3, c4) => {
                fs.readFile(a3, void 0, (d3, e5) => {
                  d3 ? c4(d3) : b3(e5.buffer);
                });
              });
            };
            !f3.thisProgram && 1 < process.argv.length && (Ca = process.argv[1].replace(/\\/g, "/"));
            process.argv.slice(2);
            "undefined" != typeof module && (module.exports = f3);
          } else if (aa || ba) ba ? B2 = self.location.href : "undefined" != typeof document && document.currentScript && (B2 = document.currentScript.src), B2 = B2.startsWith("blob:") ? "" : B2.substr(0, B2.replace(/[?#].*/, "").lastIndexOf("/") + 1), ba && (Ea = (a3) => {
            var b3 = new XMLHttpRequest();
            b3.open("GET", a3, false);
            b3.responseType = "arraybuffer";
            b3.send(null);
            return new Uint8Array(b3.response);
          }), Da = (a3) => Ga(a3) ? new Promise((b3, c4) => {
            var d3 = new XMLHttpRequest();
            d3.open("GET", a3, true);
            d3.responseType = "arraybuffer";
            d3.onload = () => {
              (200 == d3.status || 0 == d3.status && d3.response) && c4(d3.response);
              b3(d3.status);
            };
            d3.onerror = b3;
            d3.send(null);
          }) : fetch(a3, { credentials: "same-origin" }).then((b3) => b3.ok ? b3.arrayBuffer() : Promise.reject(Error(b3.status + " : " + b3.url)));
          var Ha = f3.print || console.log.bind(console), C2 = f3.printErr || console.error.bind(console);
          Object.assign(f3, Ba);
          Ba = null;
          f3.thisProgram && (Ca = f3.thisProgram);
          var Ia;
          f3.wasmBinary && (Ia = f3.wasmBinary);
          var Ja, Ka = false, p3, u3, La, D, F, Ma, Na;
          function Oa() {
            var a3 = Ja.buffer;
            f3.HEAP8 = p3 = new Int8Array(a3);
            f3.HEAP16 = La = new Int16Array(a3);
            f3.HEAPU8 = u3 = new Uint8Array(a3);
            f3.HEAPU16 = new Uint16Array(a3);
            f3.HEAP32 = D = new Int32Array(a3);
            f3.HEAPU32 = F = new Uint32Array(a3);
            f3.HEAPF32 = Ma = new Float32Array(a3);
            f3.HEAPF64 = Na = new Float64Array(a3);
          }
          var Pa = [], Qa = [], Sa = [];
          function Ta() {
            var a3 = f3.preRun.shift();
            Pa.unshift(a3);
          }
          var Ua = 0, Va = null, Wa = null;
          function G(a3) {
            f3.onAbort?.(a3);
            a3 = "Aborted(" + a3 + ")";
            C2(a3);
            Ka = true;
            throw new WebAssembly.RuntimeError(a3 + ". Build with -sASSERTIONS for more info.");
          }
          var Xa = (a3) => a3.startsWith("data:application/octet-stream;base64,"), Ga = (a3) => a3.startsWith("file://"), Ya;
          function Za(a3) {
            if (a3 == Ya && Ia) return new Uint8Array(Ia);
            if (Ea) return Ea(a3);
            throw "both async and sync fetching of the wasm failed";
          }
          function $a(a3) {
            return Ia ? Promise.resolve().then(() => Za(a3)) : Da(a3).then((b3) => new Uint8Array(b3), () => Za(a3));
          }
          function ab(a3, b3, c4) {
            return $a(a3).then((d3) => WebAssembly.instantiate(d3, b3)).then(c4, (d3) => {
              C2(`failed to asynchronously prepare wasm: ${d3}`);
              G(d3);
            });
          }
          function bb(a3, b3) {
            var c4 = Ya;
            Ia || "function" != typeof WebAssembly.instantiateStreaming || Xa(c4) || Ga(c4) || ca || "function" != typeof fetch ? ab(c4, a3, b3) : fetch(c4, { credentials: "same-origin" }).then((d3) => WebAssembly.instantiateStreaming(d3, a3).then(b3, function(e5) {
              C2(`wasm streaming compile failed: ${e5}`);
              C2("falling back to ArrayBuffer instantiation");
              return ab(c4, a3, b3);
            }));
          }
          var I2, J, cb = (a3) => {
            for (; 0 < a3.length; ) a3.shift()(f3);
          };
          function m2(a3, b3 = "i8") {
            b3.endsWith("*") && (b3 = "*");
            switch (b3) {
              case "i1":
                return p3[a3];
              case "i8":
                return p3[a3];
              case "i16":
                return La[a3 >> 1];
              case "i32":
                return D[a3 >> 2];
              case "i64":
                G("to do getValue(i64) use WASM_BIGINT");
              case "float":
                return Ma[a3 >> 2];
              case "double":
                return Na[a3 >> 3];
              case "*":
                return F[a3 >> 2];
              default:
                G(`invalid type for getValue: ${b3}`);
            }
          }
          function sa(a3) {
            var b3 = "i32";
            b3.endsWith("*") && (b3 = "*");
            switch (b3) {
              case "i1":
                p3[a3] = 0;
                break;
              case "i8":
                p3[a3] = 0;
                break;
              case "i16":
                La[a3 >> 1] = 0;
                break;
              case "i32":
                D[a3 >> 2] = 0;
                break;
              case "i64":
                G("to do setValue(i64) use WASM_BIGINT");
              case "float":
                Ma[a3 >> 2] = 0;
                break;
              case "double":
                Na[a3 >> 3] = 0;
                break;
              case "*":
                F[a3 >> 2] = 0;
                break;
              default:
                G(`invalid type for setValue: ${b3}`);
            }
          }
          var db = "undefined" != typeof TextDecoder ? new TextDecoder() : void 0, L2 = (a3, b3, c4) => {
            var d3 = b3 + c4;
            for (c4 = b3; a3[c4] && !(c4 >= d3); ) ++c4;
            if (16 < c4 - b3 && a3.buffer && db) return db.decode(a3.subarray(b3, c4));
            for (d3 = ""; b3 < c4; ) {
              var e5 = a3[b3++];
              if (e5 & 128) {
                var h4 = a3[b3++] & 63;
                if (192 == (e5 & 224)) d3 += String.fromCharCode((e5 & 31) << 6 | h4);
                else {
                  var k2 = a3[b3++] & 63;
                  e5 = 224 == (e5 & 240) ? (e5 & 15) << 12 | h4 << 6 | k2 : (e5 & 7) << 18 | h4 << 12 | k2 << 6 | a3[b3++] & 63;
                  65536 > e5 ? d3 += String.fromCharCode(e5) : (e5 -= 65536, d3 += String.fromCharCode(55296 | e5 >> 10, 56320 | e5 & 1023));
                }
              } else d3 += String.fromCharCode(e5);
            }
            return d3;
          }, ta = (a3, b3) => a3 ? L2(u3, a3, b3) : "", eb = (a3, b3) => {
            for (var c4 = 0, d3 = a3.length - 1; 0 <= d3; d3--) {
              var e5 = a3[d3];
              "." === e5 ? a3.splice(d3, 1) : ".." === e5 ? (a3.splice(d3, 1), c4++) : c4 && (a3.splice(d3, 1), c4--);
            }
            if (b3) for (; c4; c4--) a3.unshift("..");
            return a3;
          }, x2 = (a3) => {
            var b3 = "/" === a3.charAt(0), c4 = "/" === a3.substr(-1);
            (a3 = eb(a3.split("/").filter((d3) => !!d3), !b3).join("/")) || b3 || (a3 = ".");
            a3 && c4 && (a3 += "/");
            return (b3 ? "/" : "") + a3;
          }, fb = (a3) => {
            var b3 = /^(\/?|)([\s\S]*?)((?:\.{1,2}|[^\/]+?|)(\.[^.\/]*|))(?:[\/]*)$/.exec(a3).slice(1);
            a3 = b3[0];
            b3 = b3[1];
            if (!a3 && !b3) return ".";
            b3 &&= b3.substr(0, b3.length - 1);
            return a3 + b3;
          }, gb = (a3) => {
            if ("/" === a3) return "/";
            a3 = x2(a3);
            a3 = a3.replace(/\/$/, "");
            var b3 = a3.lastIndexOf("/");
            return -1 === b3 ? a3 : a3.substr(b3 + 1);
          }, hb = () => {
            if ("object" == typeof crypto && "function" == typeof crypto.getRandomValues) return (c4) => crypto.getRandomValues(c4);
            if (ca) try {
              var a3 = __require("crypto");
              if (a3.randomFillSync) return (c4) => a3.randomFillSync(c4);
              var b3 = a3.randomBytes;
              return (c4) => (c4.set(b3(c4.byteLength)), c4);
            } catch (c4) {
            }
            G("initRandomDevice");
          }, jb = (a3) => (jb = hb())(a3), kb = (...a3) => {
            for (var b3 = "", c4 = false, d3 = a3.length - 1; -1 <= d3 && !c4; d3--) {
              c4 = 0 <= d3 ? a3[d3] : "/";
              if ("string" != typeof c4) throw new TypeError("Arguments to path.resolve must be strings");
              if (!c4) return "";
              b3 = c4 + "/" + b3;
              c4 = "/" === c4.charAt(0);
            }
            b3 = eb(b3.split("/").filter((e5) => !!e5), !c4).join("/");
            return (c4 ? "/" : "") + b3 || ".";
          }, sb = [], ha = (a3) => {
            for (var b3 = 0, c4 = 0; c4 < a3.length; ++c4) {
              var d3 = a3.charCodeAt(c4);
              127 >= d3 ? b3++ : 2047 >= d3 ? b3 += 2 : 55296 <= d3 && 57343 >= d3 ? (b3 += 4, ++c4) : b3 += 3;
            }
            return b3;
          }, q = (a3, b3, c4, d3) => {
            if (!(0 < d3)) return 0;
            var e5 = c4;
            d3 = c4 + d3 - 1;
            for (var h4 = 0; h4 < a3.length; ++h4) {
              var k2 = a3.charCodeAt(h4);
              if (55296 <= k2 && 57343 >= k2) {
                var r7 = a3.charCodeAt(++h4);
                k2 = 65536 + ((k2 & 1023) << 10) | r7 & 1023;
              }
              if (127 >= k2) {
                if (c4 >= d3) break;
                b3[c4++] = k2;
              } else {
                if (2047 >= k2) {
                  if (c4 + 1 >= d3) break;
                  b3[c4++] = 192 | k2 >> 6;
                } else {
                  if (65535 >= k2) {
                    if (c4 + 2 >= d3) break;
                    b3[c4++] = 224 | k2 >> 12;
                  } else {
                    if (c4 + 3 >= d3) break;
                    b3[c4++] = 240 | k2 >> 18;
                    b3[c4++] = 128 | k2 >> 12 & 63;
                  }
                  b3[c4++] = 128 | k2 >> 6 & 63;
                }
                b3[c4++] = 128 | k2 & 63;
              }
            }
            b3[c4] = 0;
            return c4 - e5;
          };
          function qa(a3, b3) {
            var c4 = Array(ha(a3) + 1);
            a3 = q(a3, c4, 0, c4.length);
            b3 && (c4.length = a3);
            return c4;
          }
          var tb = [];
          function ub(a3, b3) {
            tb[a3] = { input: [], output: [], Wa: b3 };
            vb(a3, wb);
          }
          var wb = { open(a3) {
            var b3 = tb[a3.node.rdev];
            if (!b3) throw new P2(43);
            a3.tty = b3;
            a3.seekable = false;
          }, close(a3) {
            a3.tty.Wa.fsync(a3.tty);
          }, fsync(a3) {
            a3.tty.Wa.fsync(a3.tty);
          }, read(a3, b3, c4, d3) {
            if (!a3.tty || !a3.tty.Wa.rb) throw new P2(60);
            for (var e5 = 0, h4 = 0; h4 < d3; h4++) {
              try {
                var k2 = a3.tty.Wa.rb(a3.tty);
              } catch (r7) {
                throw new P2(29);
              }
              if (void 0 === k2 && 0 === e5) throw new P2(6);
              if (null === k2 || void 0 === k2) break;
              e5++;
              b3[c4 + h4] = k2;
            }
            e5 && (a3.node.timestamp = Date.now());
            return e5;
          }, write(a3, b3, c4, d3) {
            if (!a3.tty || !a3.tty.Wa.ib) throw new P2(60);
            try {
              for (var e5 = 0; e5 < d3; e5++) a3.tty.Wa.ib(a3.tty, b3[c4 + e5]);
            } catch (h4) {
              throw new P2(29);
            }
            d3 && (a3.node.timestamp = Date.now());
            return e5;
          } }, xb = { rb() {
            a: {
              if (!sb.length) {
                var a3 = null;
                if (ca) {
                  var b3 = Buffer.alloc(256), c4 = 0, d3 = process.stdin.fd;
                  try {
                    c4 = fs.readSync(d3, b3, 0, 256);
                  } catch (e5) {
                    if (e5.toString().includes("EOF")) c4 = 0;
                    else throw e5;
                  }
                  0 < c4 && (a3 = b3.slice(0, c4).toString("utf-8"));
                } else "undefined" != typeof window && "function" == typeof window.prompt && (a3 = window.prompt("Input: "), null !== a3 && (a3 += "\n"));
                if (!a3) {
                  a3 = null;
                  break a;
                }
                sb = qa(a3, true);
              }
              a3 = sb.shift();
            }
            return a3;
          }, ib(a3, b3) {
            null === b3 || 10 === b3 ? (Ha(L2(
              a3.output,
              0
            )), a3.output = []) : 0 != b3 && a3.output.push(b3);
          }, fsync(a3) {
            a3.output && 0 < a3.output.length && (Ha(L2(a3.output, 0)), a3.output = []);
          }, Lb() {
            return { Gb: 25856, Ib: 5, Fb: 191, Hb: 35387, Eb: [3, 28, 127, 21, 4, 0, 1, 0, 17, 19, 26, 0, 18, 15, 23, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] };
          }, Mb() {
            return 0;
          }, Nb() {
            return [24, 80];
          } }, yb = { ib(a3, b3) {
            null === b3 || 10 === b3 ? (C2(L2(a3.output, 0)), a3.output = []) : 0 != b3 && a3.output.push(b3);
          }, fsync(a3) {
            a3.output && 0 < a3.output.length && (C2(L2(a3.output, 0)), a3.output = []);
          } };
          function zb(a3, b3) {
            var c4 = a3.Ha ? a3.Ha.length : 0;
            c4 >= b3 || (b3 = Math.max(b3, c4 * (1048576 > c4 ? 2 : 1.125) >>> 0), 0 != c4 && (b3 = Math.max(b3, 256)), c4 = a3.Ha, a3.Ha = new Uint8Array(b3), 0 < a3.La && a3.Ha.set(c4.subarray(0, a3.La), 0));
          }
          var Q = {
            Pa: null,
            Qa() {
              return Q.createNode(null, "/", 16895, 0);
            },
            createNode(a3, b3, c4, d3) {
              if (24576 === (c4 & 61440) || 4096 === (c4 & 61440)) throw new P2(63);
              Q.Pa || (Q.Pa = { dir: { node: { Oa: Q.Fa.Oa, Na: Q.Fa.Na, lookup: Q.Fa.lookup, $a: Q.Fa.$a, rename: Q.Fa.rename, unlink: Q.Fa.unlink, rmdir: Q.Fa.rmdir, readdir: Q.Fa.readdir, symlink: Q.Fa.symlink }, stream: { Sa: Q.Ga.Sa } }, file: { node: { Oa: Q.Fa.Oa, Na: Q.Fa.Na }, stream: { Sa: Q.Ga.Sa, read: Q.Ga.read, write: Q.Ga.write, kb: Q.Ga.kb, ab: Q.Ga.ab, bb: Q.Ga.bb } }, link: {
                node: { Oa: Q.Fa.Oa, Na: Q.Fa.Na, readlink: Q.Fa.readlink },
                stream: {}
              }, ob: { node: { Oa: Q.Fa.Oa, Na: Q.Fa.Na }, stream: Ab } });
              c4 = Bb(a3, b3, c4, d3);
              R2(c4.mode) ? (c4.Fa = Q.Pa.dir.node, c4.Ga = Q.Pa.dir.stream, c4.Ha = {}) : 32768 === (c4.mode & 61440) ? (c4.Fa = Q.Pa.file.node, c4.Ga = Q.Pa.file.stream, c4.La = 0, c4.Ha = null) : 40960 === (c4.mode & 61440) ? (c4.Fa = Q.Pa.link.node, c4.Ga = Q.Pa.link.stream) : 8192 === (c4.mode & 61440) && (c4.Fa = Q.Pa.ob.node, c4.Ga = Q.Pa.ob.stream);
              c4.timestamp = Date.now();
              a3 && (a3.Ha[b3] = c4, a3.timestamp = c4.timestamp);
              return c4;
            },
            Kb(a3) {
              return a3.Ha ? a3.Ha.subarray ? a3.Ha.subarray(0, a3.La) : new Uint8Array(a3.Ha) : new Uint8Array(0);
            },
            Fa: { Oa(a3) {
              var b3 = {};
              b3.dev = 8192 === (a3.mode & 61440) ? a3.id : 1;
              b3.ino = a3.id;
              b3.mode = a3.mode;
              b3.nlink = 1;
              b3.uid = 0;
              b3.gid = 0;
              b3.rdev = a3.rdev;
              R2(a3.mode) ? b3.size = 4096 : 32768 === (a3.mode & 61440) ? b3.size = a3.La : 40960 === (a3.mode & 61440) ? b3.size = a3.link.length : b3.size = 0;
              b3.atime = new Date(a3.timestamp);
              b3.mtime = new Date(a3.timestamp);
              b3.ctime = new Date(a3.timestamp);
              b3.yb = 4096;
              b3.blocks = Math.ceil(b3.size / b3.yb);
              return b3;
            }, Na(a3, b3) {
              void 0 !== b3.mode && (a3.mode = b3.mode);
              void 0 !== b3.timestamp && (a3.timestamp = b3.timestamp);
              if (void 0 !== b3.size && (b3 = b3.size, a3.La != b3)) if (0 == b3) a3.Ha = null, a3.La = 0;
              else {
                var c4 = a3.Ha;
                a3.Ha = new Uint8Array(b3);
                c4 && a3.Ha.set(c4.subarray(0, Math.min(b3, a3.La)));
                a3.La = b3;
              }
            }, lookup() {
              throw Cb[44];
            }, $a(a3, b3, c4, d3) {
              return Q.createNode(a3, b3, c4, d3);
            }, rename(a3, b3, c4) {
              if (R2(a3.mode)) {
                try {
                  var d3 = Db(b3, c4);
                } catch (h4) {
                }
                if (d3) for (var e5 in d3.Ha) throw new P2(55);
              }
              delete a3.parent.Ha[a3.name];
              a3.parent.timestamp = Date.now();
              a3.name = c4;
              b3.Ha[c4] = a3;
              b3.timestamp = a3.parent.timestamp;
            }, unlink(a3, b3) {
              delete a3.Ha[b3];
              a3.timestamp = Date.now();
            }, rmdir(a3, b3) {
              var c4 = Db(a3, b3), d3;
              for (d3 in c4.Ha) throw new P2(55);
              delete a3.Ha[b3];
              a3.timestamp = Date.now();
            }, readdir(a3) {
              var b3 = [".", ".."], c4;
              for (c4 of Object.keys(a3.Ha)) b3.push(c4);
              return b3;
            }, symlink(a3, b3, c4) {
              a3 = Q.createNode(a3, b3, 41471, 0);
              a3.link = c4;
              return a3;
            }, readlink(a3) {
              if (40960 !== (a3.mode & 61440)) throw new P2(28);
              return a3.link;
            } },
            Ga: {
              read(a3, b3, c4, d3, e5) {
                var h4 = a3.node.Ha;
                if (e5 >= a3.node.La) return 0;
                a3 = Math.min(a3.node.La - e5, d3);
                if (8 < a3 && h4.subarray) b3.set(h4.subarray(e5, e5 + a3), c4);
                else for (d3 = 0; d3 < a3; d3++) b3[c4 + d3] = h4[e5 + d3];
                return a3;
              },
              write(a3, b3, c4, d3, e5, h4) {
                b3.buffer === p3.buffer && (h4 = false);
                if (!d3) return 0;
                a3 = a3.node;
                a3.timestamp = Date.now();
                if (b3.subarray && (!a3.Ha || a3.Ha.subarray)) {
                  if (h4) return a3.Ha = b3.subarray(c4, c4 + d3), a3.La = d3;
                  if (0 === a3.La && 0 === e5) return a3.Ha = b3.slice(c4, c4 + d3), a3.La = d3;
                  if (e5 + d3 <= a3.La) return a3.Ha.set(b3.subarray(c4, c4 + d3), e5), d3;
                }
                zb(a3, e5 + d3);
                if (a3.Ha.subarray && b3.subarray) a3.Ha.set(b3.subarray(c4, c4 + d3), e5);
                else for (h4 = 0; h4 < d3; h4++) a3.Ha[e5 + h4] = b3[c4 + h4];
                a3.La = Math.max(a3.La, e5 + d3);
                return d3;
              },
              Sa(a3, b3, c4) {
                1 === c4 ? b3 += a3.position : 2 === c4 && 32768 === (a3.node.mode & 61440) && (b3 += a3.node.La);
                if (0 > b3) throw new P2(28);
                return b3;
              },
              kb(a3, b3, c4) {
                zb(a3.node, b3 + c4);
                a3.node.La = Math.max(a3.node.La, b3 + c4);
              },
              ab(a3, b3, c4, d3, e5) {
                if (32768 !== (a3.node.mode & 61440)) throw new P2(43);
                a3 = a3.node.Ha;
                if (e5 & 2 || a3.buffer !== p3.buffer) {
                  if (0 < c4 || c4 + b3 < a3.length) a3.subarray ? a3 = a3.subarray(c4, c4 + b3) : a3 = Array.prototype.slice.call(a3, c4, c4 + b3);
                  c4 = true;
                  b3 = 65536 * Math.ceil(b3 / 65536);
                  (e5 = Eb(65536, b3)) ? (u3.fill(0, e5, e5 + b3), b3 = e5) : b3 = 0;
                  if (!b3) throw new P2(48);
                  p3.set(a3, b3);
                } else c4 = false, b3 = a3.byteOffset;
                return { Cb: b3, tb: c4 };
              },
              bb(a3, b3, c4, d3) {
                Q.Ga.write(a3, b3, 0, d3, c4, false);
                return 0;
              }
            }
          }, ka = (a3, b3) => {
            var c4 = 0;
            a3 && (c4 |= 365);
            b3 && (c4 |= 146);
            return c4;
          }, Fb = null, Gb = {}, Hb = [], Ib = 1, S3 = null, Jb = true, P2 = class {
            constructor(a3) {
              this.name = "ErrnoError";
              this.Ja = a3;
            }
          }, Cb = {}, Kb = class {
            constructor() {
              this.Za = {};
              this.node = null;
            }
            get flags() {
              return this.Za.flags;
            }
            set flags(a3) {
              this.Za.flags = a3;
            }
            get position() {
              return this.Za.position;
            }
            set position(a3) {
              this.Za.position = a3;
            }
          }, Lb = class {
            constructor(a3, b3, c4, d3) {
              a3 ||= this;
              this.parent = a3;
              this.Qa = a3.Qa;
              this.Ua = null;
              this.id = Ib++;
              this.name = b3;
              this.mode = c4;
              this.Fa = {};
              this.Ga = {};
              this.rdev = d3;
            }
            get read() {
              return 365 === (this.mode & 365);
            }
            set read(a3) {
              a3 ? this.mode |= 365 : this.mode &= -366;
            }
            get write() {
              return 146 === (this.mode & 146);
            }
            set write(a3) {
              a3 ? this.mode |= 146 : this.mode &= -147;
            }
          };
          function T2(a3, b3 = {}) {
            a3 = kb(a3);
            if (!a3) return { path: "", node: null };
            b3 = Object.assign({ pb: true, jb: 0 }, b3);
            if (8 < b3.jb) throw new P2(32);
            a3 = a3.split("/").filter((k2) => !!k2);
            for (var c4 = Fb, d3 = "/", e5 = 0; e5 < a3.length; e5++) {
              var h4 = e5 === a3.length - 1;
              if (h4 && b3.parent) break;
              c4 = Db(c4, a3[e5]);
              d3 = x2(d3 + "/" + a3[e5]);
              c4.Ua && (!h4 || h4 && b3.pb) && (c4 = c4.Ua.root);
              if (!h4 || b3.Ra) {
                for (h4 = 0; 40960 === (c4.mode & 61440); ) if (c4 = Mb(d3), d3 = kb(fb(d3), c4), c4 = T2(d3, { jb: b3.jb + 1 }).node, 40 < h4++) throw new P2(32);
              }
            }
            return { path: d3, node: c4 };
          }
          function ja(a3) {
            for (var b3; ; ) {
              if (a3 === a3.parent) return a3 = a3.Qa.sb, b3 ? "/" !== a3[a3.length - 1] ? `${a3}/${b3}` : a3 + b3 : a3;
              b3 = b3 ? `${a3.name}/${b3}` : a3.name;
              a3 = a3.parent;
            }
          }
          function Nb(a3, b3) {
            for (var c4 = 0, d3 = 0; d3 < b3.length; d3++) c4 = (c4 << 5) - c4 + b3.charCodeAt(d3) | 0;
            return (a3 + c4 >>> 0) % S3.length;
          }
          function Ob(a3) {
            var b3 = Nb(a3.parent.id, a3.name);
            if (S3[b3] === a3) S3[b3] = a3.Va;
            else for (b3 = S3[b3]; b3; ) {
              if (b3.Va === a3) {
                b3.Va = a3.Va;
                break;
              }
              b3 = b3.Va;
            }
          }
          function Db(a3, b3) {
            var c4 = R2(a3.mode) ? (c4 = Pb(a3, "x")) ? c4 : a3.Fa.lookup ? 0 : 2 : 54;
            if (c4) throw new P2(c4);
            for (c4 = S3[Nb(a3.id, b3)]; c4; c4 = c4.Va) {
              var d3 = c4.name;
              if (c4.parent.id === a3.id && d3 === b3) return c4;
            }
            return a3.Fa.lookup(a3, b3);
          }
          function Bb(a3, b3, c4, d3) {
            a3 = new Lb(a3, b3, c4, d3);
            b3 = Nb(a3.parent.id, a3.name);
            a3.Va = S3[b3];
            return S3[b3] = a3;
          }
          function R2(a3) {
            return 16384 === (a3 & 61440);
          }
          function Qb(a3) {
            var b3 = ["r", "w", "rw"][a3 & 3];
            a3 & 512 && (b3 += "w");
            return b3;
          }
          function Pb(a3, b3) {
            if (Jb) return 0;
            if (!b3.includes("r") || a3.mode & 292) {
              if (b3.includes("w") && !(a3.mode & 146) || b3.includes("x") && !(a3.mode & 73)) return 2;
            } else return 2;
            return 0;
          }
          function Rb(a3, b3) {
            try {
              return Db(a3, b3), 20;
            } catch (c4) {
            }
            return Pb(a3, "wx");
          }
          function Sb(a3, b3, c4) {
            try {
              var d3 = Db(a3, b3);
            } catch (e5) {
              return e5.Ja;
            }
            if (a3 = Pb(a3, "wx")) return a3;
            if (c4) {
              if (!R2(d3.mode)) return 54;
              if (d3 === d3.parent || "/" === ja(d3)) return 10;
            } else if (R2(d3.mode)) return 31;
            return 0;
          }
          function U(a3) {
            a3 = Hb[a3];
            if (!a3) throw new P2(8);
            return a3;
          }
          function Tb(a3, b3 = -1) {
            a3 = Object.assign(new Kb(), a3);
            if (-1 == b3) a: {
              for (b3 = 0; 4096 >= b3; b3++) if (!Hb[b3]) break a;
              throw new P2(33);
            }
            a3.fd = b3;
            return Hb[b3] = a3;
          }
          function Ub(a3, b3 = -1) {
            a3 = Tb(a3, b3);
            a3.Ga?.Jb?.(a3);
            return a3;
          }
          var Ab = { open(a3) {
            a3.Ga = Gb[a3.node.rdev].Ga;
            a3.Ga.open?.(a3);
          }, Sa() {
            throw new P2(70);
          } };
          function vb(a3, b3) {
            Gb[a3] = { Ga: b3 };
          }
          function Vb(a3, b3) {
            var c4 = "/" === b3;
            if (c4 && Fb) throw new P2(10);
            if (!c4 && b3) {
              var d3 = T2(b3, { pb: false });
              b3 = d3.path;
              d3 = d3.node;
              if (d3.Ua) throw new P2(10);
              if (!R2(d3.mode)) throw new P2(54);
            }
            b3 = { type: a3, Ob: {}, sb: b3, Bb: [] };
            a3 = a3.Qa(b3);
            a3.Qa = b3;
            b3.root = a3;
            c4 ? Fb = a3 : d3 && (d3.Ua = b3, d3.Qa && d3.Qa.Bb.push(b3));
          }
          function la(a3, b3, c4) {
            var d3 = T2(a3, { parent: true }).node;
            a3 = gb(a3);
            if (!a3 || "." === a3 || ".." === a3) throw new P2(28);
            var e5 = Rb(d3, a3);
            if (e5) throw new P2(e5);
            if (!d3.Fa.$a) throw new P2(63);
            return d3.Fa.$a(d3, a3, b3, c4);
          }
          function V2(a3, b3) {
            return la(a3, (void 0 !== b3 ? b3 : 511) & 1023 | 16384, 0);
          }
          function Wb(a3, b3, c4) {
            "undefined" == typeof c4 && (c4 = b3, b3 = 438);
            la(a3, b3 | 8192, c4);
          }
          function Xb(a3, b3) {
            if (!kb(a3)) throw new P2(44);
            var c4 = T2(b3, { parent: true }).node;
            if (!c4) throw new P2(44);
            b3 = gb(b3);
            var d3 = Rb(c4, b3);
            if (d3) throw new P2(d3);
            if (!c4.Fa.symlink) throw new P2(63);
            c4.Fa.symlink(c4, b3, a3);
          }
          function Yb(a3) {
            var b3 = T2(a3, { parent: true }).node;
            a3 = gb(a3);
            var c4 = Db(b3, a3), d3 = Sb(b3, a3, true);
            if (d3) throw new P2(d3);
            if (!b3.Fa.rmdir) throw new P2(63);
            if (c4.Ua) throw new P2(10);
            b3.Fa.rmdir(b3, a3);
            Ob(c4);
          }
          function za(a3) {
            var b3 = T2(a3, { parent: true }).node;
            if (!b3) throw new P2(44);
            a3 = gb(a3);
            var c4 = Db(b3, a3), d3 = Sb(b3, a3, false);
            if (d3) throw new P2(d3);
            if (!b3.Fa.unlink) throw new P2(63);
            if (c4.Ua) throw new P2(10);
            b3.Fa.unlink(b3, a3);
            Ob(c4);
          }
          function Mb(a3) {
            a3 = T2(a3).node;
            if (!a3) throw new P2(44);
            if (!a3.Fa.readlink) throw new P2(28);
            return kb(ja(a3.parent), a3.Fa.readlink(a3));
          }
          function Zb(a3, b3) {
            a3 = T2(a3, { Ra: !b3 }).node;
            if (!a3) throw new P2(44);
            if (!a3.Fa.Oa) throw new P2(63);
            return a3.Fa.Oa(a3);
          }
          function $b(a3) {
            return Zb(a3, true);
          }
          function ma(a3, b3) {
            a3 = "string" == typeof a3 ? T2(a3, { Ra: true }).node : a3;
            if (!a3.Fa.Na) throw new P2(63);
            a3.Fa.Na(a3, { mode: b3 & 4095 | a3.mode & -4096, timestamp: Date.now() });
          }
          function ac(a3, b3) {
            if (0 > b3) throw new P2(28);
            a3 = "string" == typeof a3 ? T2(a3, { Ra: true }).node : a3;
            if (!a3.Fa.Na) throw new P2(63);
            if (R2(a3.mode)) throw new P2(31);
            if (32768 !== (a3.mode & 61440)) throw new P2(28);
            var c4 = Pb(a3, "w");
            if (c4) throw new P2(c4);
            a3.Fa.Na(a3, { size: b3, timestamp: Date.now() });
          }
          function na(a3, b3, c4) {
            if ("" === a3) throw new P2(44);
            if ("string" == typeof b3) {
              var d3 = { r: 0, "r+": 2, w: 577, "w+": 578, a: 1089, "a+": 1090 }[b3];
              if ("undefined" == typeof d3) throw Error(`Unknown file open mode: ${b3}`);
              b3 = d3;
            }
            c4 = b3 & 64 ? ("undefined" == typeof c4 ? 438 : c4) & 4095 | 32768 : 0;
            if ("object" == typeof a3) var e5 = a3;
            else {
              a3 = x2(a3);
              try {
                e5 = T2(a3, { Ra: !(b3 & 131072) }).node;
              } catch (h4) {
              }
            }
            d3 = false;
            if (b3 & 64) if (e5) {
              if (b3 & 128) throw new P2(20);
            } else e5 = la(a3, c4, 0), d3 = true;
            if (!e5) throw new P2(44);
            8192 === (e5.mode & 61440) && (b3 &= -513);
            if (b3 & 65536 && !R2(e5.mode)) throw new P2(54);
            if (!d3 && (c4 = e5 ? 40960 === (e5.mode & 61440) ? 32 : R2(e5.mode) && ("r" !== Qb(b3) || b3 & 512) ? 31 : Pb(e5, Qb(b3)) : 44)) throw new P2(c4);
            b3 & 512 && !d3 && ac(e5, 0);
            b3 &= -131713;
            e5 = Tb({ node: e5, path: ja(e5), flags: b3, seekable: true, position: 0, Ga: e5.Ga, Db: [], error: false });
            e5.Ga.open && e5.Ga.open(e5);
            !f3.logReadFiles || b3 & 1 || (bc ||= {}, a3 in bc || (bc[a3] = 1));
            return e5;
          }
          function pa(a3) {
            if (null === a3.fd) throw new P2(8);
            a3.gb && (a3.gb = null);
            try {
              a3.Ga.close && a3.Ga.close(a3);
            } catch (b3) {
              throw b3;
            } finally {
              Hb[a3.fd] = null;
            }
            a3.fd = null;
          }
          function cc(a3, b3, c4) {
            if (null === a3.fd) throw new P2(8);
            if (!a3.seekable || !a3.Ga.Sa) throw new P2(70);
            if (0 != c4 && 1 != c4 && 2 != c4) throw new P2(28);
            a3.position = a3.Ga.Sa(a3, b3, c4);
            a3.Db = [];
          }
          function dc(a3, b3, c4, d3, e5) {
            if (0 > d3 || 0 > e5) throw new P2(28);
            if (null === a3.fd) throw new P2(8);
            if (1 === (a3.flags & 2097155)) throw new P2(8);
            if (R2(a3.node.mode)) throw new P2(31);
            if (!a3.Ga.read) throw new P2(28);
            var h4 = "undefined" != typeof e5;
            if (!h4) e5 = a3.position;
            else if (!a3.seekable) throw new P2(70);
            b3 = a3.Ga.read(a3, b3, c4, d3, e5);
            h4 || (a3.position += b3);
            return b3;
          }
          function oa(a3, b3, c4, d3, e5) {
            if (0 > d3 || 0 > e5) throw new P2(28);
            if (null === a3.fd) throw new P2(8);
            if (0 === (a3.flags & 2097155)) throw new P2(8);
            if (R2(a3.node.mode)) throw new P2(31);
            if (!a3.Ga.write) throw new P2(28);
            a3.seekable && a3.flags & 1024 && cc(a3, 0, 2);
            var h4 = "undefined" != typeof e5;
            if (!h4) e5 = a3.position;
            else if (!a3.seekable) throw new P2(70);
            b3 = a3.Ga.write(a3, b3, c4, d3, e5, void 0);
            h4 || (a3.position += b3);
            return b3;
          }
          function ya(a3) {
            var b3 = "binary";
            if ("utf8" !== b3 && "binary" !== b3) throw Error(`Invalid encoding type "${b3}"`);
            var c4;
            var d3 = na(a3, d3 || 0);
            a3 = Zb(a3).size;
            var e5 = new Uint8Array(a3);
            dc(d3, e5, 0, a3, 0);
            "utf8" === b3 ? c4 = L2(e5, 0) : "binary" === b3 && (c4 = e5);
            pa(d3);
            return c4;
          }
          var ec;
          function Fc(a3, b3, c4) {
            a3 = x2("/dev/" + a3);
            var d3 = ka(!!b3, !!c4);
            Hc ||= 64;
            var e5 = Hc++ << 8 | 0;
            vb(e5, { open(h4) {
              h4.seekable = false;
            }, close() {
              c4?.buffer?.length && c4(10);
            }, read(h4, k2, r7, z2) {
              for (var v2 = 0, E2 = 0; E2 < z2; E2++) {
                try {
                  var H2 = b3();
                } catch (mb) {
                  throw new P2(29);
                }
                if (void 0 === H2 && 0 === v2) throw new P2(6);
                if (null === H2 || void 0 === H2) break;
                v2++;
                k2[r7 + E2] = H2;
              }
              v2 && (h4.node.timestamp = Date.now());
              return v2;
            }, write(h4, k2, r7, z2) {
              for (var v2 = 0; v2 < z2; v2++) try {
                c4(k2[r7 + v2]);
              } catch (E2) {
                throw new P2(29);
              }
              z2 && (h4.node.timestamp = Date.now());
              return v2;
            } });
            Wb(a3, d3, e5);
          }
          var Hc, W = {}, bc;
          function Ic(a3, b3, c4) {
            if ("/" === b3.charAt(0)) return b3;
            a3 = -100 === a3 ? "/" : U(a3).path;
            if (0 == b3.length) {
              if (!c4) throw new P2(44);
              return a3;
            }
            return x2(a3 + "/" + b3);
          }
          function Jc(a3, b3, c4) {
            a3 = a3(b3);
            D[c4 >> 2] = a3.dev;
            D[c4 + 4 >> 2] = a3.mode;
            F[c4 + 8 >> 2] = a3.nlink;
            D[c4 + 12 >> 2] = a3.uid;
            D[c4 + 16 >> 2] = a3.gid;
            D[c4 + 20 >> 2] = a3.rdev;
            J = [a3.size >>> 0, (I2 = a3.size, 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
            D[c4 + 24 >> 2] = J[0];
            D[c4 + 28 >> 2] = J[1];
            D[c4 + 32 >> 2] = 4096;
            D[c4 + 36 >> 2] = a3.blocks;
            b3 = a3.atime.getTime();
            var d3 = a3.mtime.getTime(), e5 = a3.ctime.getTime();
            J = [Math.floor(b3 / 1e3) >>> 0, (I2 = Math.floor(b3 / 1e3), 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
            D[c4 + 40 >> 2] = J[0];
            D[c4 + 44 >> 2] = J[1];
            F[c4 + 48 >> 2] = b3 % 1e3 * 1e3;
            J = [Math.floor(d3 / 1e3) >>> 0, (I2 = Math.floor(d3 / 1e3), 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
            D[c4 + 56 >> 2] = J[0];
            D[c4 + 60 >> 2] = J[1];
            F[c4 + 64 >> 2] = d3 % 1e3 * 1e3;
            J = [Math.floor(e5 / 1e3) >>> 0, (I2 = Math.floor(e5 / 1e3), 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
            D[c4 + 72 >> 2] = J[0];
            D[c4 + 76 >> 2] = J[1];
            F[c4 + 80 >> 2] = e5 % 1e3 * 1e3;
            J = [a3.ino >>> 0, (I2 = a3.ino, 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
            D[c4 + 88 >> 2] = J[0];
            D[c4 + 92 >> 2] = J[1];
            return 0;
          }
          var Kc = void 0;
          function Lc() {
            var a3 = D[+Kc >> 2];
            Kc += 4;
            return a3;
          }
          var Mc = (a3, b3) => b3 + 2097152 >>> 0 < 4194305 - !!a3 ? (a3 >>> 0) + 4294967296 * b3 : NaN, Nc = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335], Oc = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334], Pc = {}, Rc = () => {
            if (!Qc) {
              var a3 = { USER: "web_user", LOGNAME: "web_user", PATH: "/", PWD: "/", HOME: "/home/web_user", LANG: ("object" == typeof navigator && navigator.languages && navigator.languages[0] || "C").replace("-", "_") + ".UTF-8", _: Ca || "./this.program" }, b3;
              for (b3 in Pc) void 0 === Pc[b3] ? delete a3[b3] : a3[b3] = Pc[b3];
              var c4 = [];
              for (b3 in a3) c4.push(`${b3}=${a3[b3]}`);
              Qc = c4;
            }
            return Qc;
          }, Qc, va = (a3) => {
            var b3 = ha(a3) + 1, c4 = y3(b3);
            q(a3, u3, c4, b3);
            return c4;
          }, Sc = (a3, b3, c4, d3) => {
            var e5 = { string: (v2) => {
              var E2 = 0;
              null !== v2 && void 0 !== v2 && 0 !== v2 && (E2 = va(v2));
              return E2;
            }, array: (v2) => {
              var E2 = y3(v2.length);
              p3.set(v2, E2);
              return E2;
            } };
            a3 = f3["_" + a3];
            var h4 = [], k2 = 0;
            if (d3) for (var r7 = 0; r7 < d3.length; r7++) {
              var z2 = e5[c4[r7]];
              z2 ? (0 === k2 && (k2 = ra()), h4[r7] = z2(d3[r7])) : h4[r7] = d3[r7];
            }
            c4 = a3(...h4);
            return c4 = function(v2) {
              0 !== k2 && ua(k2);
              return "string" === b3 ? v2 ? L2(u3, v2) : "" : "boolean" === b3 ? !!v2 : v2;
            }(c4);
          }, ea = 0, da = (a3, b3) => {
            b3 = 1 == b3 ? y3(a3.length) : ia(a3.length);
            a3.subarray || a3.slice || (a3 = new Uint8Array(a3));
            u3.set(
              a3,
              b3
            );
            return b3;
          }, Tc, Uc = [], X, wa = (a3) => {
            Tc.delete(X.get(a3));
            X.set(a3, null);
            Uc.push(a3);
          }, Aa = (a3, b3) => {
            if (!Tc) {
              Tc = /* @__PURE__ */ new WeakMap();
              var c4 = X.length;
              if (Tc) for (var d3 = 0; d3 < 0 + c4; d3++) {
                var e5 = X.get(d3);
                e5 && Tc.set(e5, d3);
              }
            }
            if (c4 = Tc.get(a3) || 0) return c4;
            if (Uc.length) c4 = Uc.pop();
            else {
              try {
                X.grow(1);
              } catch (r7) {
                if (!(r7 instanceof RangeError)) throw r7;
                throw "Unable to grow wasm table. Set ALLOW_TABLE_GROWTH.";
              }
              c4 = X.length - 1;
            }
            try {
              X.set(c4, a3);
            } catch (r7) {
              if (!(r7 instanceof TypeError)) throw r7;
              if ("function" == typeof WebAssembly.Function) {
                d3 = WebAssembly.Function;
                e5 = { i: "i32", j: "i64", f: "f32", d: "f64", e: "externref", p: "i32" };
                for (var h4 = { parameters: [], results: "v" == b3[0] ? [] : [e5[b3[0]]] }, k2 = 1; k2 < b3.length; ++k2) h4.parameters.push(e5[b3[k2]]);
                b3 = new d3(h4, a3);
              } else {
                d3 = [1];
                e5 = b3.slice(0, 1);
                b3 = b3.slice(1);
                h4 = { i: 127, p: 127, j: 126, f: 125, d: 124, e: 111 };
                d3.push(96);
                k2 = b3.length;
                128 > k2 ? d3.push(k2) : d3.push(k2 % 128 | 128, k2 >> 7);
                for (k2 = 0; k2 < b3.length; ++k2) d3.push(h4[b3[k2]]);
                "v" == e5 ? d3.push(0) : d3.push(1, h4[e5]);
                b3 = [0, 97, 115, 109, 1, 0, 0, 0, 1];
                e5 = d3.length;
                128 > e5 ? b3.push(e5) : b3.push(e5 % 128 | 128, e5 >> 7);
                b3.push(...d3);
                b3.push(
                  2,
                  7,
                  1,
                  1,
                  101,
                  1,
                  102,
                  0,
                  0,
                  7,
                  5,
                  1,
                  1,
                  102,
                  0,
                  0
                );
                b3 = new WebAssembly.Module(new Uint8Array(b3));
                b3 = new WebAssembly.Instance(b3, { e: { f: a3 } }).exports.f;
              }
              X.set(c4, b3);
            }
            Tc.set(a3, c4);
            return c4;
          };
          [44].forEach((a3) => {
            Cb[a3] = new P2(a3);
            Cb[a3].stack = "<generic error, no stack>";
          });
          S3 = Array(4096);
          Vb(Q, "/");
          V2("/tmp");
          V2("/home");
          V2("/home/web_user");
          (function() {
            V2("/dev");
            vb(259, { read: () => 0, write: (d3, e5, h4, k2) => k2 });
            Wb("/dev/null", 259);
            ub(1280, xb);
            ub(1536, yb);
            Wb("/dev/tty", 1280);
            Wb("/dev/tty1", 1536);
            var a3 = new Uint8Array(1024), b3 = 0, c4 = () => {
              0 === b3 && (b3 = jb(a3).byteLength);
              return a3[--b3];
            };
            Fc("random", c4);
            Fc("urandom", c4);
            V2("/dev/shm");
            V2("/dev/shm/tmp");
          })();
          (function() {
            V2("/proc");
            var a3 = V2("/proc/self");
            V2("/proc/self/fd");
            Vb({ Qa() {
              var b3 = Bb(a3, "fd", 16895, 73);
              b3.Fa = { lookup(c4, d3) {
                var e5 = U(+d3);
                c4 = { parent: null, Qa: { sb: "fake" }, Fa: { readlink: () => e5.path } };
                return c4.parent = c4;
              } };
              return b3;
            } }, "/proc/self/fd");
          })();
          var Vc = {
            a: (a3, b3, c4, d3) => {
              G(`Assertion failed: ${a3 ? L2(u3, a3) : ""}, at: ` + [b3 ? b3 ? L2(u3, b3) : "" : "unknown filename", c4, d3 ? d3 ? L2(u3, d3) : "" : "unknown function"]);
            },
            h: function(a3, b3) {
              try {
                return a3 = a3 ? L2(u3, a3) : "", ma(a3, b3), 0;
              } catch (c4) {
                if ("undefined" == typeof W || "ErrnoError" !== c4.name) throw c4;
                return -c4.Ja;
              }
            },
            H: function(a3, b3, c4) {
              try {
                b3 = b3 ? L2(u3, b3) : "";
                b3 = Ic(a3, b3);
                if (c4 & -8) return -28;
                var d3 = T2(b3, { Ra: true }).node;
                if (!d3) return -44;
                a3 = "";
                c4 & 4 && (a3 += "r");
                c4 & 2 && (a3 += "w");
                c4 & 1 && (a3 += "x");
                return a3 && Pb(d3, a3) ? -2 : 0;
              } catch (e5) {
                if ("undefined" == typeof W || "ErrnoError" !== e5.name) throw e5;
                return -e5.Ja;
              }
            },
            i: function(a3, b3) {
              try {
                var c4 = U(a3);
                ma(c4.node, b3);
                return 0;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            g: function(a3) {
              try {
                var b3 = U(a3).node;
                var c4 = "string" == typeof b3 ? T2(b3, { Ra: true }).node : b3;
                if (!c4.Fa.Na) throw new P2(63);
                c4.Fa.Na(c4, { timestamp: Date.now() });
                return 0;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            b: function(a3, b3, c4) {
              Kc = c4;
              try {
                var d3 = U(a3);
                switch (b3) {
                  case 0:
                    var e5 = Lc();
                    if (0 > e5) break;
                    for (; Hb[e5]; ) e5++;
                    return Ub(d3, e5).fd;
                  case 1:
                  case 2:
                    return 0;
                  case 3:
                    return d3.flags;
                  case 4:
                    return e5 = Lc(), d3.flags |= e5, 0;
                  case 12:
                    return e5 = Lc(), La[e5 + 0 >> 1] = 2, 0;
                  case 13:
                  case 14:
                    return 0;
                }
                return -28;
              } catch (h4) {
                if ("undefined" == typeof W || "ErrnoError" !== h4.name) throw h4;
                return -h4.Ja;
              }
            },
            f: function(a3, b3) {
              try {
                var c4 = U(a3);
                return Jc(Zb, c4.path, b3);
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            n: function(a3, b3, c4) {
              b3 = Mc(b3, c4);
              try {
                if (isNaN(b3)) return 61;
                var d3 = U(a3);
                if (0 === (d3.flags & 2097155)) throw new P2(28);
                ac(d3.node, b3);
                return 0;
              } catch (e5) {
                if ("undefined" == typeof W || "ErrnoError" !== e5.name) throw e5;
                return -e5.Ja;
              }
            },
            C: function(a3, b3) {
              try {
                if (0 === b3) return -28;
                var c4 = ha("/") + 1;
                if (b3 < c4) return -68;
                q("/", u3, a3, b3);
                return c4;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            F: function(a3, b3) {
              try {
                return a3 = a3 ? L2(u3, a3) : "", Jc($b, a3, b3);
              } catch (c4) {
                if ("undefined" == typeof W || "ErrnoError" !== c4.name) throw c4;
                return -c4.Ja;
              }
            },
            z: function(a3, b3, c4) {
              try {
                return b3 = b3 ? L2(u3, b3) : "", b3 = Ic(a3, b3), b3 = x2(b3), "/" === b3[b3.length - 1] && (b3 = b3.substr(0, b3.length - 1)), V2(b3, c4), 0;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            E: function(a3, b3, c4, d3) {
              try {
                b3 = b3 ? L2(u3, b3) : "";
                var e5 = d3 & 256;
                b3 = Ic(a3, b3, d3 & 4096);
                return Jc(e5 ? $b : Zb, b3, c4);
              } catch (h4) {
                if ("undefined" == typeof W || "ErrnoError" !== h4.name) throw h4;
                return -h4.Ja;
              }
            },
            x: function(a3, b3, c4, d3) {
              Kc = d3;
              try {
                b3 = b3 ? L2(u3, b3) : "";
                b3 = Ic(a3, b3);
                var e5 = d3 ? Lc() : 0;
                return na(b3, c4, e5).fd;
              } catch (h4) {
                if ("undefined" == typeof W || "ErrnoError" !== h4.name) throw h4;
                return -h4.Ja;
              }
            },
            v: function(a3, b3, c4, d3) {
              try {
                b3 = b3 ? L2(u3, b3) : "";
                b3 = Ic(a3, b3);
                if (0 >= d3) return -28;
                var e5 = Mb(b3), h4 = Math.min(d3, ha(e5)), k2 = p3[c4 + h4];
                q(e5, u3, c4, d3 + 1);
                p3[c4 + h4] = k2;
                return h4;
              } catch (r7) {
                if ("undefined" == typeof W || "ErrnoError" !== r7.name) throw r7;
                return -r7.Ja;
              }
            },
            u: function(a3) {
              try {
                return a3 = a3 ? L2(u3, a3) : "", Yb(a3), 0;
              } catch (b3) {
                if ("undefined" == typeof W || "ErrnoError" !== b3.name) throw b3;
                return -b3.Ja;
              }
            },
            G: function(a3, b3) {
              try {
                return a3 = a3 ? L2(u3, a3) : "", Jc(Zb, a3, b3);
              } catch (c4) {
                if ("undefined" == typeof W || "ErrnoError" !== c4.name) throw c4;
                return -c4.Ja;
              }
            },
            r: function(a3, b3, c4) {
              try {
                return b3 = b3 ? L2(u3, b3) : "", b3 = Ic(a3, b3), 0 === c4 ? za(b3) : 512 === c4 ? Yb(b3) : G("Invalid flags passed to unlinkat"), 0;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return -d3.Ja;
              }
            },
            q: function(a3, b3, c4) {
              try {
                b3 = b3 ? L2(u3, b3) : "";
                b3 = Ic(a3, b3, true);
                if (c4) {
                  var d3 = F[c4 >> 2] + 4294967296 * D[c4 + 4 >> 2], e5 = D[c4 + 8 >> 2];
                  h4 = 1e3 * d3 + e5 / 1e6;
                  c4 += 16;
                  d3 = F[c4 >> 2] + 4294967296 * D[c4 + 4 >> 2];
                  e5 = D[c4 + 8 >> 2];
                  k2 = 1e3 * d3 + e5 / 1e6;
                } else var h4 = Date.now(), k2 = h4;
                a3 = h4;
                var r7 = T2(b3, { Ra: true }).node;
                r7.Fa.Na(r7, { timestamp: Math.max(a3, k2) });
                return 0;
              } catch (z2) {
                if ("undefined" == typeof W || "ErrnoError" !== z2.name) throw z2;
                return -z2.Ja;
              }
            },
            l: function(a3, b3, c4) {
              a3 = new Date(1e3 * Mc(a3, b3));
              D[c4 >> 2] = a3.getSeconds();
              D[c4 + 4 >> 2] = a3.getMinutes();
              D[c4 + 8 >> 2] = a3.getHours();
              D[c4 + 12 >> 2] = a3.getDate();
              D[c4 + 16 >> 2] = a3.getMonth();
              D[c4 + 20 >> 2] = a3.getFullYear() - 1900;
              D[c4 + 24 >> 2] = a3.getDay();
              b3 = a3.getFullYear();
              D[c4 + 28 >> 2] = (0 !== b3 % 4 || 0 === b3 % 100 && 0 !== b3 % 400 ? Oc : Nc)[a3.getMonth()] + a3.getDate() - 1 | 0;
              D[c4 + 36 >> 2] = -(60 * a3.getTimezoneOffset());
              b3 = new Date(a3.getFullYear(), 6, 1).getTimezoneOffset();
              var d3 = new Date(a3.getFullYear(), 0, 1).getTimezoneOffset();
              D[c4 + 32 >> 2] = (b3 != d3 && a3.getTimezoneOffset() == Math.min(d3, b3)) | 0;
            },
            j: function(a3, b3, c4, d3, e5, h4, k2, r7) {
              e5 = Mc(e5, h4);
              try {
                if (isNaN(e5)) return 61;
                var z2 = U(d3);
                if (0 !== (b3 & 2) && 0 === (c4 & 2) && 2 !== (z2.flags & 2097155)) throw new P2(2);
                if (1 === (z2.flags & 2097155)) throw new P2(2);
                if (!z2.Ga.ab) throw new P2(43);
                var v2 = z2.Ga.ab(z2, a3, e5, b3, c4);
                var E2 = v2.Cb;
                D[k2 >> 2] = v2.tb;
                F[r7 >> 2] = E2;
                return 0;
              } catch (H2) {
                if ("undefined" == typeof W || "ErrnoError" !== H2.name) throw H2;
                return -H2.Ja;
              }
            },
            k: function(a3, b3, c4, d3, e5, h4, k2) {
              h4 = Mc(h4, k2);
              try {
                var r7 = U(e5);
                if (c4 & 2) {
                  if (32768 !== (r7.node.mode & 61440)) throw new P2(43);
                  if (!(d3 & 2)) {
                    var z2 = u3.slice(a3, a3 + b3);
                    r7.Ga.bb && r7.Ga.bb(r7, z2, h4, b3, d3);
                  }
                }
              } catch (v2) {
                if ("undefined" == typeof W || "ErrnoError" !== v2.name) throw v2;
                return -v2.Ja;
              }
            },
            y: (a3, b3, c4, d3) => {
              var e5 = (/* @__PURE__ */ new Date()).getFullYear(), h4 = new Date(e5, 0, 1).getTimezoneOffset();
              e5 = new Date(e5, 6, 1).getTimezoneOffset();
              F[a3 >> 2] = 60 * Math.max(h4, e5);
              D[b3 >> 2] = Number(h4 != e5);
              b3 = (k2) => {
                var r7 = Math.abs(k2);
                return `UTC${0 <= k2 ? "-" : "+"}${String(Math.floor(r7 / 60)).padStart(2, "0")}${String(r7 % 60).padStart(2, "0")}`;
              };
              a3 = b3(h4);
              b3 = b3(e5);
              e5 < h4 ? (q(a3, u3, c4, 17), q(b3, u3, d3, 17)) : (q(a3, u3, d3, 17), q(b3, u3, c4, 17));
            },
            d: () => Date.now(),
            s: () => 2147483648,
            c: () => performance.now(),
            o: (a3) => {
              var b3 = u3.length;
              a3 >>>= 0;
              if (2147483648 < a3) return false;
              for (var c4 = 1; 4 >= c4; c4 *= 2) {
                var d3 = b3 * (1 + 0.2 / c4);
                d3 = Math.min(d3, a3 + 100663296);
                var e5 = Math;
                d3 = Math.max(a3, d3);
                a: {
                  e5 = (e5.min.call(e5, 2147483648, d3 + (65536 - d3 % 65536) % 65536) - Ja.buffer.byteLength + 65535) / 65536;
                  try {
                    Ja.grow(e5);
                    Oa();
                    var h4 = 1;
                    break a;
                  } catch (k2) {
                  }
                  h4 = void 0;
                }
                if (h4) return true;
              }
              return false;
            },
            A: (a3, b3) => {
              var c4 = 0;
              Rc().forEach((d3, e5) => {
                var h4 = b3 + c4;
                e5 = F[a3 + 4 * e5 >> 2] = h4;
                for (h4 = 0; h4 < d3.length; ++h4) p3[e5++] = d3.charCodeAt(h4);
                p3[e5] = 0;
                c4 += d3.length + 1;
              });
              return 0;
            },
            B: (a3, b3) => {
              var c4 = Rc();
              F[a3 >> 2] = c4.length;
              var d3 = 0;
              c4.forEach((e5) => d3 += e5.length + 1);
              F[b3 >> 2] = d3;
              return 0;
            },
            e: function(a3) {
              try {
                var b3 = U(a3);
                pa(b3);
                return 0;
              } catch (c4) {
                if ("undefined" == typeof W || "ErrnoError" !== c4.name) throw c4;
                return c4.Ja;
              }
            },
            p: function(a3, b3) {
              try {
                var c4 = U(a3);
                p3[b3] = c4.tty ? 2 : R2(c4.mode) ? 3 : 40960 === (c4.mode & 61440) ? 7 : 4;
                La[b3 + 2 >> 1] = 0;
                J = [0, (I2 = 0, 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
                D[b3 + 8 >> 2] = J[0];
                D[b3 + 12 >> 2] = J[1];
                J = [0, (I2 = 0, 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
                D[b3 + 16 >> 2] = J[0];
                D[b3 + 20 >> 2] = J[1];
                return 0;
              } catch (d3) {
                if ("undefined" == typeof W || "ErrnoError" !== d3.name) throw d3;
                return d3.Ja;
              }
            },
            w: function(a3, b3, c4, d3) {
              try {
                a: {
                  var e5 = U(a3);
                  a3 = b3;
                  for (var h4, k2 = b3 = 0; k2 < c4; k2++) {
                    var r7 = F[a3 >> 2], z2 = F[a3 + 4 >> 2];
                    a3 += 8;
                    var v2 = dc(e5, p3, r7, z2, h4);
                    if (0 > v2) {
                      var E2 = -1;
                      break a;
                    }
                    b3 += v2;
                    if (v2 < z2) break;
                    "undefined" != typeof h4 && (h4 += v2);
                  }
                  E2 = b3;
                }
                F[d3 >> 2] = E2;
                return 0;
              } catch (H2) {
                if ("undefined" == typeof W || "ErrnoError" !== H2.name) throw H2;
                return H2.Ja;
              }
            },
            m: function(a3, b3, c4, d3, e5) {
              b3 = Mc(b3, c4);
              try {
                if (isNaN(b3)) return 61;
                var h4 = U(a3);
                cc(h4, b3, d3);
                J = [h4.position >>> 0, (I2 = h4.position, 1 <= +Math.abs(I2) ? 0 < I2 ? +Math.floor(I2 / 4294967296) >>> 0 : ~~+Math.ceil((I2 - +(~~I2 >>> 0)) / 4294967296) >>> 0 : 0)];
                D[e5 >> 2] = J[0];
                D[e5 + 4 >> 2] = J[1];
                h4.gb && 0 === b3 && 0 === d3 && (h4.gb = null);
                return 0;
              } catch (k2) {
                if ("undefined" == typeof W || "ErrnoError" !== k2.name) throw k2;
                return k2.Ja;
              }
            },
            D: function(a3) {
              try {
                var b3 = U(a3);
                return b3.Ga?.fsync ? b3.Ga.fsync(b3) : 0;
              } catch (c4) {
                if ("undefined" == typeof W || "ErrnoError" !== c4.name) throw c4;
                return c4.Ja;
              }
            },
            t: function(a3, b3, c4, d3) {
              try {
                a: {
                  var e5 = U(a3);
                  a3 = b3;
                  for (var h4, k2 = b3 = 0; k2 < c4; k2++) {
                    var r7 = F[a3 >> 2], z2 = F[a3 + 4 >> 2];
                    a3 += 8;
                    var v2 = oa(e5, p3, r7, z2, h4);
                    if (0 > v2) {
                      var E2 = -1;
                      break a;
                    }
                    b3 += v2;
                    "undefined" != typeof h4 && (h4 += v2);
                  }
                  E2 = b3;
                }
                F[d3 >> 2] = E2;
                return 0;
              } catch (H2) {
                if ("undefined" == typeof W || "ErrnoError" !== H2.name) throw H2;
                return H2.Ja;
              }
            }
          }, Z = function() {
            function a3(c4) {
              Z = c4.exports;
              Ja = Z.I;
              Oa();
              X = Z.K;
              Qa.unshift(Z.J);
              Ua--;
              f3.monitorRunDependencies?.(Ua);
              0 == Ua && (null !== Va && (clearInterval(Va), Va = null), Wa && (c4 = Wa, Wa = null, c4()));
              return Z;
            }
            var b3 = { a: Vc };
            Ua++;
            f3.monitorRunDependencies?.(Ua);
            if (f3.instantiateWasm) try {
              return f3.instantiateWasm(b3, a3);
            } catch (c4) {
              return C2(`Module.instantiateWasm callback failed with error: ${c4}`), false;
            }
            Ya ||= Xa("sql-wasm.wasm") ? "sql-wasm.wasm" : f3.locateFile ? f3.locateFile(
              "sql-wasm.wasm",
              B2
            ) : B2 + "sql-wasm.wasm";
            bb(b3, function(c4) {
              a3(c4.instance);
            });
            return {};
          }();
          f3._sqlite3_free = (a3) => (f3._sqlite3_free = Z.L)(a3);
          f3._sqlite3_value_text = (a3) => (f3._sqlite3_value_text = Z.M)(a3);
          f3._sqlite3_prepare_v2 = (a3, b3, c4, d3, e5) => (f3._sqlite3_prepare_v2 = Z.N)(a3, b3, c4, d3, e5);
          f3._sqlite3_step = (a3) => (f3._sqlite3_step = Z.O)(a3);
          f3._sqlite3_reset = (a3) => (f3._sqlite3_reset = Z.P)(a3);
          f3._sqlite3_exec = (a3, b3, c4, d3, e5) => (f3._sqlite3_exec = Z.Q)(a3, b3, c4, d3, e5);
          f3._sqlite3_finalize = (a3) => (f3._sqlite3_finalize = Z.R)(a3);
          f3._sqlite3_column_name = (a3, b3) => (f3._sqlite3_column_name = Z.S)(a3, b3);
          f3._sqlite3_column_text = (a3, b3) => (f3._sqlite3_column_text = Z.T)(a3, b3);
          f3._sqlite3_column_type = (a3, b3) => (f3._sqlite3_column_type = Z.U)(a3, b3);
          f3._sqlite3_errmsg = (a3) => (f3._sqlite3_errmsg = Z.V)(a3);
          f3._sqlite3_clear_bindings = (a3) => (f3._sqlite3_clear_bindings = Z.W)(a3);
          f3._sqlite3_value_blob = (a3) => (f3._sqlite3_value_blob = Z.X)(a3);
          f3._sqlite3_value_bytes = (a3) => (f3._sqlite3_value_bytes = Z.Y)(a3);
          f3._sqlite3_value_double = (a3) => (f3._sqlite3_value_double = Z.Z)(a3);
          f3._sqlite3_value_int = (a3) => (f3._sqlite3_value_int = Z._)(a3);
          f3._sqlite3_value_type = (a3) => (f3._sqlite3_value_type = Z.$)(a3);
          f3._sqlite3_result_blob = (a3, b3, c4, d3) => (f3._sqlite3_result_blob = Z.aa)(a3, b3, c4, d3);
          f3._sqlite3_result_double = (a3, b3) => (f3._sqlite3_result_double = Z.ba)(a3, b3);
          f3._sqlite3_result_error = (a3, b3, c4) => (f3._sqlite3_result_error = Z.ca)(a3, b3, c4);
          f3._sqlite3_result_int = (a3, b3) => (f3._sqlite3_result_int = Z.da)(a3, b3);
          f3._sqlite3_result_int64 = (a3, b3, c4) => (f3._sqlite3_result_int64 = Z.ea)(a3, b3, c4);
          f3._sqlite3_result_null = (a3) => (f3._sqlite3_result_null = Z.fa)(a3);
          f3._sqlite3_result_text = (a3, b3, c4, d3) => (f3._sqlite3_result_text = Z.ga)(a3, b3, c4, d3);
          f3._sqlite3_aggregate_context = (a3, b3) => (f3._sqlite3_aggregate_context = Z.ha)(a3, b3);
          f3._sqlite3_column_count = (a3) => (f3._sqlite3_column_count = Z.ia)(a3);
          f3._sqlite3_data_count = (a3) => (f3._sqlite3_data_count = Z.ja)(a3);
          f3._sqlite3_column_blob = (a3, b3) => (f3._sqlite3_column_blob = Z.ka)(a3, b3);
          f3._sqlite3_column_bytes = (a3, b3) => (f3._sqlite3_column_bytes = Z.la)(a3, b3);
          f3._sqlite3_column_double = (a3, b3) => (f3._sqlite3_column_double = Z.ma)(a3, b3);
          f3._sqlite3_bind_blob = (a3, b3, c4, d3, e5) => (f3._sqlite3_bind_blob = Z.na)(a3, b3, c4, d3, e5);
          f3._sqlite3_bind_double = (a3, b3, c4) => (f3._sqlite3_bind_double = Z.oa)(a3, b3, c4);
          f3._sqlite3_bind_int = (a3, b3, c4) => (f3._sqlite3_bind_int = Z.pa)(a3, b3, c4);
          f3._sqlite3_bind_text = (a3, b3, c4, d3, e5) => (f3._sqlite3_bind_text = Z.qa)(a3, b3, c4, d3, e5);
          f3._sqlite3_bind_parameter_index = (a3, b3) => (f3._sqlite3_bind_parameter_index = Z.ra)(a3, b3);
          f3._sqlite3_sql = (a3) => (f3._sqlite3_sql = Z.sa)(a3);
          f3._sqlite3_normalized_sql = (a3) => (f3._sqlite3_normalized_sql = Z.ta)(a3);
          f3._sqlite3_changes = (a3) => (f3._sqlite3_changes = Z.ua)(a3);
          f3._sqlite3_close_v2 = (a3) => (f3._sqlite3_close_v2 = Z.va)(a3);
          f3._sqlite3_create_function_v2 = (a3, b3, c4, d3, e5, h4, k2, r7, z2) => (f3._sqlite3_create_function_v2 = Z.wa)(a3, b3, c4, d3, e5, h4, k2, r7, z2);
          f3._sqlite3_open = (a3, b3) => (f3._sqlite3_open = Z.xa)(a3, b3);
          var ia = f3._malloc = (a3) => (ia = f3._malloc = Z.ya)(a3), fa = f3._free = (a3) => (fa = f3._free = Z.za)(a3);
          f3._RegisterExtensionFunctions = (a3) => (f3._RegisterExtensionFunctions = Z.Aa)(a3);
          var Eb = (a3, b3) => (Eb = Z.Ba)(a3, b3), ua = (a3) => (ua = Z.Ca)(a3), y3 = (a3) => (y3 = Z.Da)(a3), ra = () => (ra = Z.Ea)();
          f3.stackSave = () => ra();
          f3.stackRestore = (a3) => ua(a3);
          f3.stackAlloc = (a3) => y3(a3);
          f3.cwrap = (a3, b3, c4, d3) => {
            var e5 = !c4 || c4.every((h4) => "number" === h4 || "boolean" === h4);
            return "string" !== b3 && e5 && !d3 ? f3["_" + a3] : (...h4) => Sc(a3, b3, c4, h4);
          };
          f3.addFunction = Aa;
          f3.removeFunction = wa;
          f3.UTF8ToString = ta;
          f3.ALLOC_NORMAL = ea;
          f3.allocate = da;
          f3.allocateUTF8OnStack = va;
          var Wc;
          Wa = function Xc() {
            Wc || Yc();
            Wc || (Wa = Xc);
          };
          function Yc() {
            function a3() {
              if (!Wc && (Wc = true, f3.calledRun = true, !Ka)) {
                f3.noFSInit || ec || (ec = true, f3.stdin = f3.stdin, f3.stdout = f3.stdout, f3.stderr = f3.stderr, f3.stdin ? Fc("stdin", f3.stdin) : Xb("/dev/tty", "/dev/stdin"), f3.stdout ? Fc("stdout", null, f3.stdout) : Xb("/dev/tty", "/dev/stdout"), f3.stderr ? Fc("stderr", null, f3.stderr) : Xb("/dev/tty1", "/dev/stderr"), na("/dev/stdin", 0), na("/dev/stdout", 1), na("/dev/stderr", 1));
                Jb = false;
                cb(Qa);
                f3.onRuntimeInitialized?.();
                if (f3.postRun) for ("function" == typeof f3.postRun && (f3.postRun = [f3.postRun]); f3.postRun.length; ) {
                  var b3 = f3.postRun.shift();
                  Sa.unshift(b3);
                }
                cb(Sa);
              }
            }
            if (!(0 < Ua)) {
              if (f3.preRun) for ("function" == typeof f3.preRun && (f3.preRun = [f3.preRun]); f3.preRun.length; ) Ta();
              cb(Pa);
              0 < Ua || (f3.setStatus ? (f3.setStatus("Running..."), setTimeout(function() {
                setTimeout(function() {
                  f3.setStatus("");
                }, 1);
                a3();
              }, 1)) : a3());
            }
          }
          if (f3.preInit) for ("function" == typeof f3.preInit && (f3.preInit = [f3.preInit]); 0 < f3.preInit.length; ) f3.preInit.pop()();
          Yc();
          return Module;
        });
        return initSqlJsPromise;
      };
      if (typeof exports === "object" && typeof module === "object") {
        module.exports = initSqlJs2;
        module.exports.default = initSqlJs2;
      } else if (typeof define === "function" && define["amd"]) {
        define([], function() {
          return initSqlJs2;
        });
      } else if (typeof exports === "object") {
        exports["Module"] = initSqlJs2;
      }
    }
  });

  // www/node_modules/.pnpm/@lit+reactive-element@2.0.4/node_modules/@lit/reactive-element/css-tag.js
  var t = globalThis;
  var e = t.ShadowRoot && (void 0 === t.ShadyCSS || t.ShadyCSS.nativeShadow) && "adoptedStyleSheets" in Document.prototype && "replace" in CSSStyleSheet.prototype;
  var s = Symbol();
  var o = /* @__PURE__ */ new WeakMap();
  var n = class {
    constructor(t4, e5, o5) {
      if (this._$cssResult$ = true, o5 !== s) throw Error("CSSResult is not constructable. Use `unsafeCSS` or `css` instead.");
      this.cssText = t4, this.t = e5;
    }
    get styleSheet() {
      let t4 = this.o;
      const s4 = this.t;
      if (e && void 0 === t4) {
        const e5 = void 0 !== s4 && 1 === s4.length;
        e5 && (t4 = o.get(s4)), void 0 === t4 && ((this.o = t4 = new CSSStyleSheet()).replaceSync(this.cssText), e5 && o.set(s4, t4));
      }
      return t4;
    }
    toString() {
      return this.cssText;
    }
  };
  var r = (t4) => new n("string" == typeof t4 ? t4 : t4 + "", void 0, s);
  var S = (s4, o5) => {
    if (e) s4.adoptedStyleSheets = o5.map((t4) => t4 instanceof CSSStyleSheet ? t4 : t4.styleSheet);
    else for (const e5 of o5) {
      const o6 = document.createElement("style"), n5 = t.litNonce;
      void 0 !== n5 && o6.setAttribute("nonce", n5), o6.textContent = e5.cssText, s4.appendChild(o6);
    }
  };
  var c = e ? (t4) => t4 : (t4) => t4 instanceof CSSStyleSheet ? ((t5) => {
    let e5 = "";
    for (const s4 of t5.cssRules) e5 += s4.cssText;
    return r(e5);
  })(t4) : t4;

  // www/node_modules/.pnpm/@lit+reactive-element@2.0.4/node_modules/@lit/reactive-element/reactive-element.js
  var { is: i2, defineProperty: e2, getOwnPropertyDescriptor: r2, getOwnPropertyNames: h, getOwnPropertySymbols: o2, getPrototypeOf: n2 } = Object;
  var a = globalThis;
  var c2 = a.trustedTypes;
  var l = c2 ? c2.emptyScript : "";
  var p = a.reactiveElementPolyfillSupport;
  var d = (t4, s4) => t4;
  var u = { toAttribute(t4, s4) {
    switch (s4) {
      case Boolean:
        t4 = t4 ? l : null;
        break;
      case Object:
      case Array:
        t4 = null == t4 ? t4 : JSON.stringify(t4);
    }
    return t4;
  }, fromAttribute(t4, s4) {
    let i6 = t4;
    switch (s4) {
      case Boolean:
        i6 = null !== t4;
        break;
      case Number:
        i6 = null === t4 ? null : Number(t4);
        break;
      case Object:
      case Array:
        try {
          i6 = JSON.parse(t4);
        } catch (t5) {
          i6 = null;
        }
    }
    return i6;
  } };
  var f = (t4, s4) => !i2(t4, s4);
  var y = { attribute: true, type: String, converter: u, reflect: false, hasChanged: f };
  Symbol.metadata ??= Symbol("metadata"), a.litPropertyMetadata ??= /* @__PURE__ */ new WeakMap();
  var b = class extends HTMLElement {
    static addInitializer(t4) {
      this._$Ei(), (this.l ??= []).push(t4);
    }
    static get observedAttributes() {
      return this.finalize(), this._$Eh && [...this._$Eh.keys()];
    }
    static createProperty(t4, s4 = y) {
      if (s4.state && (s4.attribute = false), this._$Ei(), this.elementProperties.set(t4, s4), !s4.noAccessor) {
        const i6 = Symbol(), r7 = this.getPropertyDescriptor(t4, i6, s4);
        void 0 !== r7 && e2(this.prototype, t4, r7);
      }
    }
    static getPropertyDescriptor(t4, s4, i6) {
      const { get: e5, set: h4 } = r2(this.prototype, t4) ?? { get() {
        return this[s4];
      }, set(t5) {
        this[s4] = t5;
      } };
      return { get() {
        return e5?.call(this);
      }, set(s5) {
        const r7 = e5?.call(this);
        h4.call(this, s5), this.requestUpdate(t4, r7, i6);
      }, configurable: true, enumerable: true };
    }
    static getPropertyOptions(t4) {
      return this.elementProperties.get(t4) ?? y;
    }
    static _$Ei() {
      if (this.hasOwnProperty(d("elementProperties"))) return;
      const t4 = n2(this);
      t4.finalize(), void 0 !== t4.l && (this.l = [...t4.l]), this.elementProperties = new Map(t4.elementProperties);
    }
    static finalize() {
      if (this.hasOwnProperty(d("finalized"))) return;
      if (this.finalized = true, this._$Ei(), this.hasOwnProperty(d("properties"))) {
        const t5 = this.properties, s4 = [...h(t5), ...o2(t5)];
        for (const i6 of s4) this.createProperty(i6, t5[i6]);
      }
      const t4 = this[Symbol.metadata];
      if (null !== t4) {
        const s4 = litPropertyMetadata.get(t4);
        if (void 0 !== s4) for (const [t5, i6] of s4) this.elementProperties.set(t5, i6);
      }
      this._$Eh = /* @__PURE__ */ new Map();
      for (const [t5, s4] of this.elementProperties) {
        const i6 = this._$Eu(t5, s4);
        void 0 !== i6 && this._$Eh.set(i6, t5);
      }
      this.elementStyles = this.finalizeStyles(this.styles);
    }
    static finalizeStyles(s4) {
      const i6 = [];
      if (Array.isArray(s4)) {
        const e5 = new Set(s4.flat(1 / 0).reverse());
        for (const s5 of e5) i6.unshift(c(s5));
      } else void 0 !== s4 && i6.push(c(s4));
      return i6;
    }
    static _$Eu(t4, s4) {
      const i6 = s4.attribute;
      return false === i6 ? void 0 : "string" == typeof i6 ? i6 : "string" == typeof t4 ? t4.toLowerCase() : void 0;
    }
    constructor() {
      super(), this._$Ep = void 0, this.isUpdatePending = false, this.hasUpdated = false, this._$Em = null, this._$Ev();
    }
    _$Ev() {
      this._$ES = new Promise((t4) => this.enableUpdating = t4), this._$AL = /* @__PURE__ */ new Map(), this._$E_(), this.requestUpdate(), this.constructor.l?.forEach((t4) => t4(this));
    }
    addController(t4) {
      (this._$EO ??= /* @__PURE__ */ new Set()).add(t4), void 0 !== this.renderRoot && this.isConnected && t4.hostConnected?.();
    }
    removeController(t4) {
      this._$EO?.delete(t4);
    }
    _$E_() {
      const t4 = /* @__PURE__ */ new Map(), s4 = this.constructor.elementProperties;
      for (const i6 of s4.keys()) this.hasOwnProperty(i6) && (t4.set(i6, this[i6]), delete this[i6]);
      t4.size > 0 && (this._$Ep = t4);
    }
    createRenderRoot() {
      const t4 = this.shadowRoot ?? this.attachShadow(this.constructor.shadowRootOptions);
      return S(t4, this.constructor.elementStyles), t4;
    }
    connectedCallback() {
      this.renderRoot ??= this.createRenderRoot(), this.enableUpdating(true), this._$EO?.forEach((t4) => t4.hostConnected?.());
    }
    enableUpdating(t4) {
    }
    disconnectedCallback() {
      this._$EO?.forEach((t4) => t4.hostDisconnected?.());
    }
    attributeChangedCallback(t4, s4, i6) {
      this._$AK(t4, i6);
    }
    _$EC(t4, s4) {
      const i6 = this.constructor.elementProperties.get(t4), e5 = this.constructor._$Eu(t4, i6);
      if (void 0 !== e5 && true === i6.reflect) {
        const r7 = (void 0 !== i6.converter?.toAttribute ? i6.converter : u).toAttribute(s4, i6.type);
        this._$Em = t4, null == r7 ? this.removeAttribute(e5) : this.setAttribute(e5, r7), this._$Em = null;
      }
    }
    _$AK(t4, s4) {
      const i6 = this.constructor, e5 = i6._$Eh.get(t4);
      if (void 0 !== e5 && this._$Em !== e5) {
        const t5 = i6.getPropertyOptions(e5), r7 = "function" == typeof t5.converter ? { fromAttribute: t5.converter } : void 0 !== t5.converter?.fromAttribute ? t5.converter : u;
        this._$Em = e5, this[e5] = r7.fromAttribute(s4, t5.type), this._$Em = null;
      }
    }
    requestUpdate(t4, s4, i6) {
      if (void 0 !== t4) {
        if (i6 ??= this.constructor.getPropertyOptions(t4), !(i6.hasChanged ?? f)(this[t4], s4)) return;
        this.P(t4, s4, i6);
      }
      false === this.isUpdatePending && (this._$ES = this._$ET());
    }
    P(t4, s4, i6) {
      this._$AL.has(t4) || this._$AL.set(t4, s4), true === i6.reflect && this._$Em !== t4 && (this._$Ej ??= /* @__PURE__ */ new Set()).add(t4);
    }
    async _$ET() {
      this.isUpdatePending = true;
      try {
        await this._$ES;
      } catch (t5) {
        Promise.reject(t5);
      }
      const t4 = this.scheduleUpdate();
      return null != t4 && await t4, !this.isUpdatePending;
    }
    scheduleUpdate() {
      return this.performUpdate();
    }
    performUpdate() {
      if (!this.isUpdatePending) return;
      if (!this.hasUpdated) {
        if (this.renderRoot ??= this.createRenderRoot(), this._$Ep) {
          for (const [t6, s5] of this._$Ep) this[t6] = s5;
          this._$Ep = void 0;
        }
        const t5 = this.constructor.elementProperties;
        if (t5.size > 0) for (const [s5, i6] of t5) true !== i6.wrapped || this._$AL.has(s5) || void 0 === this[s5] || this.P(s5, this[s5], i6);
      }
      let t4 = false;
      const s4 = this._$AL;
      try {
        t4 = this.shouldUpdate(s4), t4 ? (this.willUpdate(s4), this._$EO?.forEach((t5) => t5.hostUpdate?.()), this.update(s4)) : this._$EU();
      } catch (s5) {
        throw t4 = false, this._$EU(), s5;
      }
      t4 && this._$AE(s4);
    }
    willUpdate(t4) {
    }
    _$AE(t4) {
      this._$EO?.forEach((t5) => t5.hostUpdated?.()), this.hasUpdated || (this.hasUpdated = true, this.firstUpdated(t4)), this.updated(t4);
    }
    _$EU() {
      this._$AL = /* @__PURE__ */ new Map(), this.isUpdatePending = false;
    }
    get updateComplete() {
      return this.getUpdateComplete();
    }
    getUpdateComplete() {
      return this._$ES;
    }
    shouldUpdate(t4) {
      return true;
    }
    update(t4) {
      this._$Ej &&= this._$Ej.forEach((t5) => this._$EC(t5, this[t5])), this._$EU();
    }
    updated(t4) {
    }
    firstUpdated(t4) {
    }
  };
  b.elementStyles = [], b.shadowRootOptions = { mode: "open" }, b[d("elementProperties")] = /* @__PURE__ */ new Map(), b[d("finalized")] = /* @__PURE__ */ new Map(), p?.({ ReactiveElement: b }), (a.reactiveElementVersions ??= []).push("2.0.4");

  // www/node_modules/.pnpm/lit-html@3.2.1/node_modules/lit-html/lit-html.js
  var t2 = globalThis;
  var i3 = t2.trustedTypes;
  var s2 = i3 ? i3.createPolicy("lit-html", { createHTML: (t4) => t4 }) : void 0;
  var e3 = "$lit$";
  var h2 = `lit$${Math.random().toFixed(9).slice(2)}$`;
  var o3 = "?" + h2;
  var n3 = `<${o3}>`;
  var r3 = document;
  var l2 = () => r3.createComment("");
  var c3 = (t4) => null === t4 || "object" != typeof t4 && "function" != typeof t4;
  var a2 = Array.isArray;
  var u2 = (t4) => a2(t4) || "function" == typeof t4?.[Symbol.iterator];
  var d2 = "[ 	\n\f\r]";
  var f2 = /<(?:(!--|\/[^a-zA-Z])|(\/?[a-zA-Z][^>\s]*)|(\/?$))/g;
  var v = /-->/g;
  var _ = />/g;
  var m = RegExp(`>|${d2}(?:([^\\s"'>=/]+)(${d2}*=${d2}*(?:[^ 	
\f\r"'\`<>=]|("|')|))|$)`, "g");
  var p2 = /'/g;
  var g = /"/g;
  var $ = /^(?:script|style|textarea|title)$/i;
  var y2 = (t4) => (i6, ...s4) => ({ _$litType$: t4, strings: i6, values: s4 });
  var x = y2(1);
  var b2 = y2(2);
  var w = y2(3);
  var T = Symbol.for("lit-noChange");
  var E = Symbol.for("lit-nothing");
  var A = /* @__PURE__ */ new WeakMap();
  var C = r3.createTreeWalker(r3, 129);
  function P(t4, i6) {
    if (!a2(t4) || !t4.hasOwnProperty("raw")) throw Error("invalid template strings array");
    return void 0 !== s2 ? s2.createHTML(i6) : i6;
  }
  var V = (t4, i6) => {
    const s4 = t4.length - 1, o5 = [];
    let r7, l3 = 2 === i6 ? "<svg>" : 3 === i6 ? "<math>" : "", c4 = f2;
    for (let i7 = 0; i7 < s4; i7++) {
      const s5 = t4[i7];
      let a3, u3, d3 = -1, y3 = 0;
      for (; y3 < s5.length && (c4.lastIndex = y3, u3 = c4.exec(s5), null !== u3); ) y3 = c4.lastIndex, c4 === f2 ? "!--" === u3[1] ? c4 = v : void 0 !== u3[1] ? c4 = _ : void 0 !== u3[2] ? ($.test(u3[2]) && (r7 = RegExp("</" + u3[2], "g")), c4 = m) : void 0 !== u3[3] && (c4 = m) : c4 === m ? ">" === u3[0] ? (c4 = r7 ?? f2, d3 = -1) : void 0 === u3[1] ? d3 = -2 : (d3 = c4.lastIndex - u3[2].length, a3 = u3[1], c4 = void 0 === u3[3] ? m : '"' === u3[3] ? g : p2) : c4 === g || c4 === p2 ? c4 = m : c4 === v || c4 === _ ? c4 = f2 : (c4 = m, r7 = void 0);
      const x2 = c4 === m && t4[i7 + 1].startsWith("/>") ? " " : "";
      l3 += c4 === f2 ? s5 + n3 : d3 >= 0 ? (o5.push(a3), s5.slice(0, d3) + e3 + s5.slice(d3) + h2 + x2) : s5 + h2 + (-2 === d3 ? i7 : x2);
    }
    return [P(t4, l3 + (t4[s4] || "<?>") + (2 === i6 ? "</svg>" : 3 === i6 ? "</math>" : "")), o5];
  };
  var N = class _N {
    constructor({ strings: t4, _$litType$: s4 }, n5) {
      let r7;
      this.parts = [];
      let c4 = 0, a3 = 0;
      const u3 = t4.length - 1, d3 = this.parts, [f3, v2] = V(t4, s4);
      if (this.el = _N.createElement(f3, n5), C.currentNode = this.el.content, 2 === s4 || 3 === s4) {
        const t5 = this.el.content.firstChild;
        t5.replaceWith(...t5.childNodes);
      }
      for (; null !== (r7 = C.nextNode()) && d3.length < u3; ) {
        if (1 === r7.nodeType) {
          if (r7.hasAttributes()) for (const t5 of r7.getAttributeNames()) if (t5.endsWith(e3)) {
            const i6 = v2[a3++], s5 = r7.getAttribute(t5).split(h2), e5 = /([.?@])?(.*)/.exec(i6);
            d3.push({ type: 1, index: c4, name: e5[2], strings: s5, ctor: "." === e5[1] ? H : "?" === e5[1] ? I : "@" === e5[1] ? L : k }), r7.removeAttribute(t5);
          } else t5.startsWith(h2) && (d3.push({ type: 6, index: c4 }), r7.removeAttribute(t5));
          if ($.test(r7.tagName)) {
            const t5 = r7.textContent.split(h2), s5 = t5.length - 1;
            if (s5 > 0) {
              r7.textContent = i3 ? i3.emptyScript : "";
              for (let i6 = 0; i6 < s5; i6++) r7.append(t5[i6], l2()), C.nextNode(), d3.push({ type: 2, index: ++c4 });
              r7.append(t5[s5], l2());
            }
          }
        } else if (8 === r7.nodeType) if (r7.data === o3) d3.push({ type: 2, index: c4 });
        else {
          let t5 = -1;
          for (; -1 !== (t5 = r7.data.indexOf(h2, t5 + 1)); ) d3.push({ type: 7, index: c4 }), t5 += h2.length - 1;
        }
        c4++;
      }
    }
    static createElement(t4, i6) {
      const s4 = r3.createElement("template");
      return s4.innerHTML = t4, s4;
    }
  };
  function S2(t4, i6, s4 = t4, e5) {
    if (i6 === T) return i6;
    let h4 = void 0 !== e5 ? s4._$Co?.[e5] : s4._$Cl;
    const o5 = c3(i6) ? void 0 : i6._$litDirective$;
    return h4?.constructor !== o5 && (h4?._$AO?.(false), void 0 === o5 ? h4 = void 0 : (h4 = new o5(t4), h4._$AT(t4, s4, e5)), void 0 !== e5 ? (s4._$Co ??= [])[e5] = h4 : s4._$Cl = h4), void 0 !== h4 && (i6 = S2(t4, h4._$AS(t4, i6.values), h4, e5)), i6;
  }
  var M = class {
    constructor(t4, i6) {
      this._$AV = [], this._$AN = void 0, this._$AD = t4, this._$AM = i6;
    }
    get parentNode() {
      return this._$AM.parentNode;
    }
    get _$AU() {
      return this._$AM._$AU;
    }
    u(t4) {
      const { el: { content: i6 }, parts: s4 } = this._$AD, e5 = (t4?.creationScope ?? r3).importNode(i6, true);
      C.currentNode = e5;
      let h4 = C.nextNode(), o5 = 0, n5 = 0, l3 = s4[0];
      for (; void 0 !== l3; ) {
        if (o5 === l3.index) {
          let i7;
          2 === l3.type ? i7 = new R(h4, h4.nextSibling, this, t4) : 1 === l3.type ? i7 = new l3.ctor(h4, l3.name, l3.strings, this, t4) : 6 === l3.type && (i7 = new z(h4, this, t4)), this._$AV.push(i7), l3 = s4[++n5];
        }
        o5 !== l3?.index && (h4 = C.nextNode(), o5++);
      }
      return C.currentNode = r3, e5;
    }
    p(t4) {
      let i6 = 0;
      for (const s4 of this._$AV) void 0 !== s4 && (void 0 !== s4.strings ? (s4._$AI(t4, s4, i6), i6 += s4.strings.length - 2) : s4._$AI(t4[i6])), i6++;
    }
  };
  var R = class _R {
    get _$AU() {
      return this._$AM?._$AU ?? this._$Cv;
    }
    constructor(t4, i6, s4, e5) {
      this.type = 2, this._$AH = E, this._$AN = void 0, this._$AA = t4, this._$AB = i6, this._$AM = s4, this.options = e5, this._$Cv = e5?.isConnected ?? true;
    }
    get parentNode() {
      let t4 = this._$AA.parentNode;
      const i6 = this._$AM;
      return void 0 !== i6 && 11 === t4?.nodeType && (t4 = i6.parentNode), t4;
    }
    get startNode() {
      return this._$AA;
    }
    get endNode() {
      return this._$AB;
    }
    _$AI(t4, i6 = this) {
      t4 = S2(this, t4, i6), c3(t4) ? t4 === E || null == t4 || "" === t4 ? (this._$AH !== E && this._$AR(), this._$AH = E) : t4 !== this._$AH && t4 !== T && this._(t4) : void 0 !== t4._$litType$ ? this.$(t4) : void 0 !== t4.nodeType ? this.T(t4) : u2(t4) ? this.k(t4) : this._(t4);
    }
    O(t4) {
      return this._$AA.parentNode.insertBefore(t4, this._$AB);
    }
    T(t4) {
      this._$AH !== t4 && (this._$AR(), this._$AH = this.O(t4));
    }
    _(t4) {
      this._$AH !== E && c3(this._$AH) ? this._$AA.nextSibling.data = t4 : this.T(r3.createTextNode(t4)), this._$AH = t4;
    }
    $(t4) {
      const { values: i6, _$litType$: s4 } = t4, e5 = "number" == typeof s4 ? this._$AC(t4) : (void 0 === s4.el && (s4.el = N.createElement(P(s4.h, s4.h[0]), this.options)), s4);
      if (this._$AH?._$AD === e5) this._$AH.p(i6);
      else {
        const t5 = new M(e5, this), s5 = t5.u(this.options);
        t5.p(i6), this.T(s5), this._$AH = t5;
      }
    }
    _$AC(t4) {
      let i6 = A.get(t4.strings);
      return void 0 === i6 && A.set(t4.strings, i6 = new N(t4)), i6;
    }
    k(t4) {
      a2(this._$AH) || (this._$AH = [], this._$AR());
      const i6 = this._$AH;
      let s4, e5 = 0;
      for (const h4 of t4) e5 === i6.length ? i6.push(s4 = new _R(this.O(l2()), this.O(l2()), this, this.options)) : s4 = i6[e5], s4._$AI(h4), e5++;
      e5 < i6.length && (this._$AR(s4 && s4._$AB.nextSibling, e5), i6.length = e5);
    }
    _$AR(t4 = this._$AA.nextSibling, i6) {
      for (this._$AP?.(false, true, i6); t4 && t4 !== this._$AB; ) {
        const i7 = t4.nextSibling;
        t4.remove(), t4 = i7;
      }
    }
    setConnected(t4) {
      void 0 === this._$AM && (this._$Cv = t4, this._$AP?.(t4));
    }
  };
  var k = class {
    get tagName() {
      return this.element.tagName;
    }
    get _$AU() {
      return this._$AM._$AU;
    }
    constructor(t4, i6, s4, e5, h4) {
      this.type = 1, this._$AH = E, this._$AN = void 0, this.element = t4, this.name = i6, this._$AM = e5, this.options = h4, s4.length > 2 || "" !== s4[0] || "" !== s4[1] ? (this._$AH = Array(s4.length - 1).fill(new String()), this.strings = s4) : this._$AH = E;
    }
    _$AI(t4, i6 = this, s4, e5) {
      const h4 = this.strings;
      let o5 = false;
      if (void 0 === h4) t4 = S2(this, t4, i6, 0), o5 = !c3(t4) || t4 !== this._$AH && t4 !== T, o5 && (this._$AH = t4);
      else {
        const e6 = t4;
        let n5, r7;
        for (t4 = h4[0], n5 = 0; n5 < h4.length - 1; n5++) r7 = S2(this, e6[s4 + n5], i6, n5), r7 === T && (r7 = this._$AH[n5]), o5 ||= !c3(r7) || r7 !== this._$AH[n5], r7 === E ? t4 = E : t4 !== E && (t4 += (r7 ?? "") + h4[n5 + 1]), this._$AH[n5] = r7;
      }
      o5 && !e5 && this.j(t4);
    }
    j(t4) {
      t4 === E ? this.element.removeAttribute(this.name) : this.element.setAttribute(this.name, t4 ?? "");
    }
  };
  var H = class extends k {
    constructor() {
      super(...arguments), this.type = 3;
    }
    j(t4) {
      this.element[this.name] = t4 === E ? void 0 : t4;
    }
  };
  var I = class extends k {
    constructor() {
      super(...arguments), this.type = 4;
    }
    j(t4) {
      this.element.toggleAttribute(this.name, !!t4 && t4 !== E);
    }
  };
  var L = class extends k {
    constructor(t4, i6, s4, e5, h4) {
      super(t4, i6, s4, e5, h4), this.type = 5;
    }
    _$AI(t4, i6 = this) {
      if ((t4 = S2(this, t4, i6, 0) ?? E) === T) return;
      const s4 = this._$AH, e5 = t4 === E && s4 !== E || t4.capture !== s4.capture || t4.once !== s4.once || t4.passive !== s4.passive, h4 = t4 !== E && (s4 === E || e5);
      e5 && this.element.removeEventListener(this.name, this, s4), h4 && this.element.addEventListener(this.name, this, t4), this._$AH = t4;
    }
    handleEvent(t4) {
      "function" == typeof this._$AH ? this._$AH.call(this.options?.host ?? this.element, t4) : this._$AH.handleEvent(t4);
    }
  };
  var z = class {
    constructor(t4, i6, s4) {
      this.element = t4, this.type = 6, this._$AN = void 0, this._$AM = i6, this.options = s4;
    }
    get _$AU() {
      return this._$AM._$AU;
    }
    _$AI(t4) {
      S2(this, t4);
    }
  };
  var j = t2.litHtmlPolyfillSupport;
  j?.(N, R), (t2.litHtmlVersions ??= []).push("3.2.1");
  var B = (t4, i6, s4) => {
    const e5 = s4?.renderBefore ?? i6;
    let h4 = e5._$litPart$;
    if (void 0 === h4) {
      const t5 = s4?.renderBefore ?? null;
      e5._$litPart$ = h4 = new R(i6.insertBefore(l2(), t5), t5, void 0, s4 ?? {});
    }
    return h4._$AI(t4), h4;
  };

  // www/node_modules/.pnpm/lit-element@4.1.1/node_modules/lit-element/lit-element.js
  var r4 = class extends b {
    constructor() {
      super(...arguments), this.renderOptions = { host: this }, this._$Do = void 0;
    }
    createRenderRoot() {
      const t4 = super.createRenderRoot();
      return this.renderOptions.renderBefore ??= t4.firstChild, t4;
    }
    update(t4) {
      const s4 = this.render();
      this.hasUpdated || (this.renderOptions.isConnected = this.isConnected), super.update(t4), this._$Do = B(s4, this.renderRoot, this.renderOptions);
    }
    connectedCallback() {
      super.connectedCallback(), this._$Do?.setConnected(true);
    }
    disconnectedCallback() {
      super.disconnectedCallback(), this._$Do?.setConnected(false);
    }
    render() {
      return T;
    }
  };
  r4._$litElement$ = true, r4["finalized"] = true, globalThis.litElementHydrateSupport?.({ LitElement: r4 });
  var i4 = globalThis.litElementPolyfillSupport;
  i4?.({ LitElement: r4 });
  (globalThis.litElementVersions ??= []).push("4.1.1");

  // www/node_modules/.pnpm/@lit+task@1.0.1/node_modules/@lit/task/task.js
  var i5 = Symbol();
  var h3 = class {
    get taskComplete() {
      return this.t || (1 === this.i ? this.t = new Promise((t4, s4) => {
        this.o = t4, this.h = s4;
      }) : 3 === this.i ? this.t = Promise.reject(this.l) : this.t = Promise.resolve(this.u)), this.t;
    }
    constructor(t4, s4, i6) {
      this.p = 0, this.i = 0, (this._ = t4).addController(this);
      const h4 = "object" == typeof s4 ? s4 : { task: s4, args: i6 };
      this.v = h4.task, this.j = h4.args, this.m = h4.argsEqual ?? r5, this.k = h4.onComplete, this.A = h4.onError, this.autoRun = h4.autoRun ?? true, "initialValue" in h4 && (this.u = h4.initialValue, this.i = 2, this.O = this.T?.());
    }
    hostUpdate() {
      true === this.autoRun && this.S();
    }
    hostUpdated() {
      "afterUpdate" === this.autoRun && this.S();
    }
    T() {
      if (void 0 === this.j) return;
      const t4 = this.j();
      if (!Array.isArray(t4)) throw Error("The args function must return an array");
      return t4;
    }
    async S() {
      const t4 = this.T(), s4 = this.O;
      this.O = t4, t4 === s4 || void 0 === t4 || void 0 !== s4 && this.m(s4, t4) || await this.run(t4);
    }
    async run(t4) {
      let s4, h4;
      t4 ??= this.T(), this.O = t4, 1 === this.i ? this.q?.abort() : (this.t = void 0, this.o = void 0, this.h = void 0), this.i = 1, "afterUpdate" === this.autoRun ? queueMicrotask(() => this._.requestUpdate()) : this._.requestUpdate();
      const r7 = ++this.p;
      this.q = new AbortController();
      let e5 = false;
      try {
        s4 = await this.v(t4, { signal: this.q.signal });
      } catch (t5) {
        e5 = true, h4 = t5;
      }
      if (this.p === r7) {
        if (s4 === i5) this.i = 0;
        else {
          if (false === e5) {
            try {
              this.k?.(s4);
            } catch {
            }
            this.i = 2, this.o?.(s4);
          } else {
            try {
              this.A?.(h4);
            } catch {
            }
            this.i = 3, this.h?.(h4);
          }
          this.u = s4, this.l = h4;
        }
        this._.requestUpdate();
      }
    }
    abort(t4) {
      1 === this.i && this.q?.abort(t4);
    }
    get value() {
      return this.u;
    }
    get error() {
      return this.l;
    }
    get status() {
      return this.i;
    }
    render(t4) {
      switch (this.i) {
        case 0:
          return t4.initial?.();
        case 1:
          return t4.pending?.();
        case 2:
          return t4.complete?.(this.value);
        case 3:
          return t4.error?.(this.error);
        default:
          throw Error("Unexpected status: " + this.i);
      }
    }
  };
  var r5 = (s4, i6) => s4 === i6 || s4.length === i6.length && s4.every((s5, h4) => !f(s5, i6[h4]));

  // www/node_modules/.pnpm/@lit+reactive-element@2.0.4/node_modules/@lit/reactive-element/decorators/custom-element.js
  var t3 = (t4) => (e5, o5) => {
    void 0 !== o5 ? o5.addInitializer(() => {
      customElements.define(t4, e5);
    }) : customElements.define(t4, e5);
  };

  // www/node_modules/.pnpm/@lit+reactive-element@2.0.4/node_modules/@lit/reactive-element/decorators/property.js
  var o4 = { attribute: true, type: String, converter: u, reflect: false, hasChanged: f };
  var r6 = (t4 = o4, e5, r7) => {
    const { kind: n5, metadata: i6 } = r7;
    let s4 = globalThis.litPropertyMetadata.get(i6);
    if (void 0 === s4 && globalThis.litPropertyMetadata.set(i6, s4 = /* @__PURE__ */ new Map()), s4.set(r7.name, t4), "accessor" === n5) {
      const { name: o5 } = r7;
      return { set(r8) {
        const n6 = e5.get.call(this);
        e5.set.call(this, r8), this.requestUpdate(o5, n6, t4);
      }, init(e6) {
        return void 0 !== e6 && this.P(o5, void 0, t4), e6;
      } };
    }
    if ("setter" === n5) {
      const { name: o5 } = r7;
      return function(r8) {
        const n6 = this[o5];
        e5.call(this, r8), this.requestUpdate(o5, n6, t4);
      };
    }
    throw Error("Unsupported decorator location: " + n5);
  };
  function n4(t4) {
    return (e5, o5) => "object" == typeof o5 ? r6(t4, e5, o5) : ((t5, e6, o6) => {
      const r7 = e6.hasOwnProperty(o6);
      return e6.constructor.createProperty(o6, r7 ? { ...t5, wrapped: true } : t5), r7 ? Object.getOwnPropertyDescriptor(e6, o6) : void 0;
    })(t4, e5, o5);
  }

  // www/db/stmt.ts
  var import_sql_wasm = __toESM(require_sql_wasm());
  var Stmt = class _Stmt {
    db;
    constructor() {
    }
    // TODO: Also could load the schema from a string because templ can supply it up front.
    // static async load(schemaPath: string): Promise<Stmt> {
    //   const s = new Stmt();
    //   await s.init();
    //   const schema = await s.fetchStmt(schemaPath);
    //   console.log(schema);
    //   s.exec(schema);
    //   return s;
    // }
    static async load(schema) {
      const s4 = new _Stmt();
      await s4.init();
      s4.execAll(schema);
      return s4;
    }
    // Executes a single SQL query against the loaded database.
    exec(stmt) {
      const rows = this.db.exec(stmt)[0];
      return rows;
    }
    execAll(stmts) {
      return this.db.exec(stmts);
    }
    async fetchStmt(path) {
      const rsp = await fetch(path);
      if (!rsp.ok) {
        throw new Error(rsp.statusText);
      }
      return rsp.text();
    }
    async init() {
      const cfg = { locateFile: (file) => "assets/sql-wasm.wasm" };
      const SQL = await (0, import_sql_wasm.default)(cfg);
      this.db = new SQL.Database();
    }
  };
  window.Stmt = Stmt;

  // www/db/formatter.ts
  var MarkdownFormatter = class _MarkdownFormatter {
    columns;
    rows;
    constructor() {
    }
    static fromResult(result) {
      var mf = new _MarkdownFormatter();
      mf.columns = result.columns;
      mf.rows = result.values.map(
        (row) => row.map((value) => value === null ? "NULL" : value.toString())
      );
      return mf;
    }
    toString() {
      const verticalSeparator = `|`;
      const horizontalSeparator = `-`;
      var widths;
      widths = this.columns.map((col) => col.length + 2);
      widths = this.rows.map(
        (row) => row.reduce((max, value) => Math.max(max, value.length + 2), 0)
      );
      return widths.toString();
    }
  };

  // www/components/example.ts
  var SQLExample = class extends r4 {
    _stmt;
    _initTask = new h3(this, {
      task: async () => {
        try {
          this._stmt = await Stmt.load(this.schema);
        } catch (error) {
          console.log(
            `failed to initialize SQLite database with schema ${this.schema}: ${error}`
          );
        }
      }
    });
    constructor() {
      super();
      this._initTask.run();
    }
    schema;
    stmt;
    result;
    willUpdate() {
      const res = this._stmt.exec(this.stmt);
      const fmt = MarkdownFormatter.fromResult(res);
      this.result = fmt.toString();
    }
    render() {
      return x`<pre>${this.result}</pre>`;
    }
  };
  __decorateClass([
    n4()
  ], SQLExample.prototype, "schema", 2);
  __decorateClass([
    n4()
  ], SQLExample.prototype, "stmt", 2);
  __decorateClass([
    n4({ attribute: false })
  ], SQLExample.prototype, "result", 2);
  SQLExample = __decorateClass([
    t3("sql-example")
  ], SQLExample);
})();
/*! Bundled license information:

@lit/reactive-element/css-tag.js:
  (**
   * @license
   * Copyright 2019 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/reactive-element.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

lit-html/lit-html.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

lit-element/lit-element.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

lit-html/is-server.js:
  (**
   * @license
   * Copyright 2022 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/task/task.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/custom-element.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/property.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/state.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/event-options.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/base.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/query.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/query-all.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/query-async.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/query-assigned-elements.js:
  (**
   * @license
   * Copyright 2021 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)

@lit/reactive-element/decorators/query-assigned-nodes.js:
  (**
   * @license
   * Copyright 2017 Google LLC
   * SPDX-License-Identifier: BSD-3-Clause
   *)
*/
